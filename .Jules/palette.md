## 2024-05-14 - Dynamic Text SVG Accessibility
**Learning:** Text-generating dynamic SVGs (like `readme-typing-svg`) do not expose their text content to screen readers automatically. Using a generic `alt="Typing SVG"` label creates an inaccessible experience for visually impaired users.
**Action:** Always manually construct the `alt` text to describe the text content (e.g., extracting parameters from the URL like "lines=...") rather than using a generic label.
