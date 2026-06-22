# Slidev Well-being Template

Reusable Slidev template for a 16:9 academic lecture deck on well-being.

This template is intended to be copied with:

```bash
scripts/new-slidev-deck.sh Other/2026/new_lecture slidev-tohoku
```

## Usage

```bash
npm install
npm run dev
```

Export:

```bash
npm run export
npm run export:pdf
```

## Files

- `slides.md`: main deck source.
- `style.css`: shared visual system and reusable layout classes.
- `assets/`: figures, logos, and screenshots used by the deck.

## Editing Notes

- Keep one core claim per slide.
- Use `.page`, `.kicker`, `.claim`, `.support`, `.footer`, and the reusable grid/card classes from `style.css`.
- Put speaker notes in HTML comments below each slide.
