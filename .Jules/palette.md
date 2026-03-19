## 2024-10-24 - Dynamic SVG Accessibility
**Learning:** Text-generating dynamic SVGs (like `readme-typing-svg`) present an accessibility anti-pattern when used with generic alt text (e.g., "Typing SVG"), as screen readers miss the actual rendered text content passed via URL parameters.
**Action:** Always manually construct `alt` text for dynamic text SVGs by extracting and formatting the text content parameters from the URL.
