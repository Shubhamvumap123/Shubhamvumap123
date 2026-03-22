## 2026-02-28 - [Performance: Heroku vs Cloudflare for External SVGs]
**Learning:** For dynamic external SVGs (like `readme-typing-svg`), `herokuapp.com` URLs suffer from noticeable cold-start latency and use HTTP/1.1. In contrast, `demolab.com` operates via Cloudflare with HTTP/2 and caching, resulting in significantly faster response times and improved load performance for `README.md`.
**Action:** Always prefer `demolab.com` or equivalent edge-cached domains over `herokuapp.com` for dynamic SVG assets to prevent rendering delays.
