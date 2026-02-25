## 2026-02-25 - Switch to Cloudflare-backed Typing SVG
**Learning:** The `readme-typing-svg.herokuapp.com` domain serves via HTTP/1.1 directly from Heroku, while `readme-typing-svg.demolab.com` uses Cloudflare (HTTP/2).
**Action:** Always prefer the `demolab.com` instance for this service to leverage HTTP/2 and potential edge caching.
