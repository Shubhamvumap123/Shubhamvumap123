## 2024-10-24 - Restrict GITHUB_TOKEN permissions in workflow
**Vulnerability:** GitHub Actions workflow lacks explicit `permissions` block, defaulting to potentially permissive repository settings.
**Learning:** Defining an explicit `permissions` block at the job level implicitly sets all other unlisted `GITHUB_TOKEN` permissions to `none`, enforcing the principle of least privilege.
**Prevention:** Always define explicit `permissions` for `GITHUB_TOKEN` in GitHub Actions workflows to minimize the blast radius of a compromised token.
