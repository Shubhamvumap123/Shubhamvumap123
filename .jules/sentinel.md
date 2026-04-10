## 2024-05-24 - Unintended Repository Rollback Risk
**Vulnerability:** A force-push step to the master branch without prior commits.
**Learning:** workflow_dispatch triggers on older commits can cause complete branch rollback if combined with force-push.
**Prevention:** Remove unnecessary push steps and avoid force-pushes.
## 2025-04-10 - Explicit Permissions in GitHub Actions Workflows
**Vulnerability:** GitHub Actions workflow did not explicitly define a `permissions` block, resulting in the default, broad `GITHUB_TOKEN` permissions being assigned to the job.
**Learning:** This repository uses a workflow to build and push generated artifacts (contribution snake) using `crazy-max/ghaction-github-pages`. By default, when a workflow lacks a `permissions` block, the token is granted a broad set of permissions. Explicitly setting `permissions: contents: write` reduces the scope of access, implementing the principle of least privilege, preventing unnecessary modifications if the workflow is compromised.
**Prevention:** Always define explicit `permissions` for `GITHUB_TOKEN` in GitHub Actions workflows, tailoring the permissions to the exact requirements of the job.
