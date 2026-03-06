## 2024-05-18 - Descriptive `alt` text for text-generating SVGs
**Learning:** Generic labels (like "Typing SVG") hide the actual content of dynamically text-generating SVGs (like `readme-typing-svg`) from screen readers.
**Action:** Always manually construct descriptive `alt` text by extracting text parameters from the URL or SVG configuration instead of using a generic label.