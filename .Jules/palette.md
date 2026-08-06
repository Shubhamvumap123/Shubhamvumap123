## 2024-10-24 - Dynamic SVG Accessibility
**Learning:** Text-generating dynamic SVGs (like `readme-typing-svg`) present an accessibility anti-pattern when used with generic alt text (e.g., "Typing SVG"), as screen readers miss the actual rendered text content passed via URL parameters.
**Action:** Always manually construct `alt` text for dynamic text SVGs by extracting and formatting the text content parameters from the URL.

## 2024-03-20 - Decorative Image Accessibility Anti-Pattern
**Learning:** Adding explicit descriptive text like `alt="Decorative footer wave"` to purely decorative images is an accessibility anti-pattern that clutters the auditory experience for screen reader users.
**Action:** Always use an empty `alt=""` attribute and `aria-hidden="true"` for purely visual flair so assistive technologies gracefully skip the element.
