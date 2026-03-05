## 2024-05-14 - Use Cloudflare API endpoints to reduce cold start latency
**Learning:** `readme-typing-svg.herokuapp.com` incurs significant Heroku cold-start latencies. Swapping to the Cloudflare equivalent `readme-typing-svg.demolab.com` avoids these starts entirely and connects quicker via HTTP/2 and faster global caching edge nodes.
**Action:** Replace `herokuapp.com` domains with `demolab.com` for dynamic SVG endpoints from `readme-typing-svg`.
