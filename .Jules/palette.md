## 2026-03-11 - Dynamic SVG Accessibility in README
**Learning:** For text-generating dynamic SVGs (like readme-typing-svg), a generic alt tag is insufficient for screen readers. Since the API returns an HTML comment rather than pure SVG initially, parsing is difficult.
**Action:** The alt text must be manually constructed to describe the text content by extracting parameters from the URL directly.
