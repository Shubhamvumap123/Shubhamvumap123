#!/bin/bash

# Check if gh CLI is installed
if ! command -v gh &> /dev/null
then
    echo "gh CLI could not be found. Please install it to use this script."
    exit 1
fi

# Ensure user is authenticated
if ! gh auth status &> /dev/null
then
    echo "You are not authenticated with gh CLI. Please run 'gh auth login' first."
    exit 1
fi

REPO="Shubhamvumap123/Shubhamvumap123"

echo "Fetching all open PRs for $REPO..."

# Get all open PRs in JSON format with their number, title, and mergeable status
PR_LIST=$(gh pr list -R "$REPO" --state open --json number,title,mergeable)

# Check if there are no open PRs
if [ "$(echo "$PR_LIST" | jq 'length')" -eq 0 ]; then
    echo "No open PRs found."
    exit 0
fi

echo "$PR_LIST" | jq -c '.[]' | while read -r PR; do
    PR_NUMBER=$(echo "$PR" | jq -r '.number')
    PR_TITLE=$(echo "$PR" | jq -r '.title')
    MERGEABLE=$(echo "$PR" | jq -r '.mergeable')

    echo "Processing PR #$PR_NUMBER: $PR_TITLE"

    if [ "$MERGEABLE" == "CONFLICTING" ]; then
        echo "  -> PR #$PR_NUMBER has conflicts. Closing (declining) the PR."
        gh pr close "$PR_NUMBER" -R "$REPO" -c "Closing PR because it has merge conflicts."
    elif [ "$MERGEABLE" == "MERGEABLE" ]; then
        echo "  -> PR #$PR_NUMBER is mergeable. Merging..."
        # You can use --merge, --squash, or --rebase. Using --merge as default.
        gh pr merge "$PR_NUMBER" -R "$REPO" --merge --delete-branch
    elif [ "$MERGEABLE" == "UNKNOWN" ]; then
        echo "  -> PR #$PR_NUMBER merge state is unknown. Skipping."
    else
        echo "  -> PR #$PR_NUMBER merge state is '$MERGEABLE'. Skipping."
    fi
    echo "----------------------------------------"
done

echo "Done processing PRs."
