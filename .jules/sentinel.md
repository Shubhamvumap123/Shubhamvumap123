## 2024-05-24 - Securing GitHub Actions Dependencies and Permissions
**Vulnerability:** GitHub Action workflows were using mutable tags (e.g., `@master`, `@v2`) and implicitly relying on default broad runner permissions instead of least privilege.
**Learning:** GitHub Action workflows must explicitly pin third-party actions to immutable commit SHAs to prevent supply chain attacks, and explicit `permissions: contents: write` blocks with explanations must be used.
**Prevention:** Pin all GitHub Actions to specific commit SHAs rather than tags and explicitly declare `permissions` needed with comments justifying write access.
