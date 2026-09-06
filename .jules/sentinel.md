## 2024-05-22 - GitHub Actions Permissions
**Vulnerability:** Workflow had implicit permissions.
**Learning:** Workflows that push to the repository (e.g. `ad-m/github-push-action`, `ghaction-github-pages`) require `contents: write`. Explicitly defining this adheres to least privilege by denying other scopes.
**Prevention:** Always define `permissions` block, and document `write` access if needed.
