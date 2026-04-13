## 2024-10-24 - Dynamic SVG Accessibility
**Learning:** Text-generating dynamic SVGs (like `readme-typing-svg`) present an accessibility anti-pattern when used with generic alt text (e.g., "Typing SVG"), as screen readers miss the actual rendered text content passed via URL parameters.
**Action:** Always manually construct `alt` text for dynamic text SVGs by extracting and formatting the text content parameters from the URL.

## 2024-11-20 - Dynamic Image Accessibility
**Learning:** Dynamic images like API-generated components whose exact text content is unknown (like `readme-jokes`) must use descriptive `alt` text explaining the component's purpose rather than generic terms.
**Action:** When updating dynamic images, ensure the `alt` text describes the purpose of the component instead of being generic.
