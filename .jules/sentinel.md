## 2024-05-24 - Unintended Repository Rollback Risk
**Vulnerability:** A force-push step to the master branch without prior commits.
**Learning:** workflow_dispatch triggers on older commits can cause complete branch rollback if combined with force-push.
**Prevention:** Remove unnecessary push steps and avoid force-pushes.
## 2024-05-24 - Default Token Permissions in Actions
**Vulnerability:** GitHub Actions workflows relying on default GITHUB_TOKEN permissions, granting excessive access across multiple scopes.
**Learning:** Omission of a `permissions` block defaults to broad access, violating the principle of least privilege and increasing the blast radius if the workflow is compromised.
**Prevention:** Always explicitly define `permissions` at the job level. Specify only the necessary scopes (e.g., `contents: write`), implicitly setting all other unlisted permissions to `none`.
