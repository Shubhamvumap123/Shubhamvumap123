## 2026-02-26 - Dynamic SVG Accessibility
**Learning:** For text-generating dynamic SVGs (like `readme-typing-svg`), generic alt text like "Typing SVG" is insufficient for screen readers. The `alt` text must be manually constructed to describe the actual text content being generated (e.g., extracting parameters from the URL).
**Action:** When adding or updating dynamic SVGs, always manually curate the `alt` text to reflect the content, rather than describing the medium.
