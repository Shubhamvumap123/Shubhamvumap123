# ==============================================================================
# Script: merge_all_prs.ps1
# Description: Automates merging all open Pull Requests into the current branch,
#              automatically resolving all merge conflicts using '-X theirs'.
# ==============================================================================

Write-Host ">>> Fetching list of all open PRs from GitHub..." -ForegroundColor Cyan

# Fetch all open PR numbers
$prJson = gh pr list --limit 1000 --state open --json number
$prNumbers = ($prJson | ConvertFrom-Json).number

# Sort PRs in ascending order (chronological order)
$prs = $prNumbers | Sort-Object

$total = $prs.Count
Write-Host "Found $total open PR(s) to merge.`n" -ForegroundColor Yellow

$merged = @()
$failed = @()
$current = 0

foreach ($pr in $prs) {
    $current++
    Write-Host "[$current/$total] Processing PR #$pr..." -ForegroundColor Cyan -NoNewline
    
    # 1. Fetch the PR ref
    git fetch origin pull/$pr/head:pr-$pr 2>$null
    if ($LASTEXITCODE -ne 0) {
        Write-Host " [FETCH FAILED]" -ForegroundColor Red
        $failed += $pr
        continue
    }
    
    # 2. Attempt merge with '-X theirs' strategy to auto-resolve content conflicts
    git merge pr-$pr -X theirs -m "Merge PR #$pr (Auto-resolved conflicts)" --no-edit 2>$null
    
    # 3. Check if there are remaining tree / deletion conflicts
    if ($LASTEXITCODE -ne 0) {
        # Auto-accept all incoming files for unmerged paths
        git checkout --theirs . 2>$null
        git add -A 2>$null
        git commit -m "Merge PR #$pr (Auto-resolved edge conflicts)" --no-edit 2>$null
    }
    
    # Verify merge status
    $status = git status --porcelain
    if ($status -match "^UU" -or $status -match "^AA" -or $status -match "^DD") {
        Write-Host " [CONFLICT ABORTED]" -ForegroundColor Red
        git merge --abort 2>$null
        $failed += $pr
    } else {
        Write-Host " [MERGED]" -ForegroundColor Green
        $merged += $pr
    }
    
    # Clean up local temporary branch
    git branch -D pr-$pr 2>$null
}

Write-Host "`n==================================================" -ForegroundColor Yellow
Write-Host "Merge Process Complete!" -ForegroundColor Green
Write-Host "Total PRs Processed: $total"
Write-Host "Successfully Merged: $($merged.Count)" -ForegroundColor Green
Write-Host "Failed / Skipped:   $($failed.Count)" -ForegroundColor Red
Write-Host "==================================================`n" -ForegroundColor Yellow

if ($failed.Count -gt 0) {
    Write-Host "Failed PRs: $($failed -join ', ')" -ForegroundColor Red
}

Write-Host "`nTo push all merged PRs to GitHub, run:" -ForegroundColor Cyan
Write-Host "git push origin main`n" -ForegroundColor White
