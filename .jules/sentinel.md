## 2024-10-26 - [Unpinned Actions & Overly Permissive Token]
**Vulnerability:** The workflow used mutable references (`@master`, `@v2`) and relied on implicit GITHUB_TOKEN permissions.
**Learning:** Using `@master` or version tags allows upstream changes (malicious or breaking) to impact the workflow without notice. Relying on default permissions violates the principle of least privilege.
**Prevention:** Pin actions to full-length commit SHAs and explicitly define `permissions: contents: write` (or read) for each job.
