## 2024-05-24 - Unintended Repository Rollback Risk
**Vulnerability:** A force-push step to the master branch without prior commits.
**Learning:** workflow_dispatch triggers on older commits can cause complete branch rollback if combined with force-push.
**Prevention:** Remove unnecessary push steps and avoid force-pushes.
## 2024-05-24 - Automated Review False Positive
**Vulnerability:** Automated review rejected adding `permissions: contents: write`.
**Learning:** The `crazy-max/ghaction-github-pages` action legitimately requires `contents: write` permissions to push to the target branch. Adding it correctly restricts other default scopes like `issues` to `none`, which is a security enhancement, but automated reviews may flag it.
**Prevention:** In this specific scenario, ignore the automated review warning as it is a known false positive.
