## 2024-05-24 - [Accessibility] Dynamic SVG Alt Texts
**Learning:** Text-generating dynamic SVGs require manually constructed `alt` texts that describe their generated content. Generic labels (like "Typing SVG") fail to provide context for screen readers.
**Action:** Always extract text parameters from dynamic image URLs to formulate explicit, descriptive `alt` tags.