## 2024-05-20 - Descriptive Alt Text for Dynamic SVGs
**Learning:** For text-generating dynamic SVGs (like `readme-typing-svg`), screen readers cannot parse the text inside the SVG. A generic alt text like "Typing SVG" is unhelpful.
**Action:** Always manually construct alt text by extracting text parameters from the URL (e.g., the `lines` parameter) to provide equivalent information to screen reader users.
