# Sentinel's Journal 🛡️

## 2025-02-20 - Unpinned Actions and Branch Confusion
**Vulnerability:** The workflow used `Platane/snk@master` which pointed to an old v1.1.4 commit, while the repo's default branch is `main` (v3+). This created a risk of unexpected breaking changes if `master` was ever updated or deleted.
**Learning:** Repositories often change default branches (master -> main) and release strategies. Relying on mutable refs like `@master` is risky not just for security but for stability.
**Prevention:** Pin actions to full length commit SHAs to ensure immutability and consistent behavior regardless of upstream branch/tag changes.
