## 2026-03-04 - Alt Text for Dynamic Text SVGs
**Learning:** For dynamic text SVGs like readme-typing-svg, generic alt text like "Typing SVG" creates an inaccessible experience for screen readers. Since the SVG generates text on the fly, the alt attribute must be manually constructed from the parameters used in the SVG URL to accurately describe its contents.
**Action:** Extract text parameters from dynamic SVGs (e.g., from the `lines` parameter) and assemble them into a meaningful `alt` string when implementing or updating these components.
