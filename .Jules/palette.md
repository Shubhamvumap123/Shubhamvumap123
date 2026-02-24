## 2026-02-24 - Descriptive Alt Text for Dynamic Profile Images
**Learning:** Dynamic SVG generators (like readme-typing-svg) often get generic alt text (e.g., "Typing SVG"), which misses the opportunity to convey the dynamic content (e.g., job titles) to screen reader users.
**Action:** Extract the content parameters (e.g., `lines=...`) from the URL and use them to construct a descriptive `alt` text that summarizes the animation's content.
