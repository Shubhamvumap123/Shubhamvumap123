## 2024-05-24 - Unintended Repository Rollback Risk
**Vulnerability:** A force-push step to the master branch without prior commits.
**Learning:** workflow_dispatch triggers on older commits can cause complete branch rollback if combined with force-push.
**Prevention:** Remove unnecessary push steps and avoid force-pushes.
