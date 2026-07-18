# CV/Resume

Resume source (LaTeX) and static landing page for **https://lverma.com/resume**.

Inspired (shamelessly copied) from https://github.com/sohomdatta1/cv.

## Preferred public URL

**Canonical:** `https://lverma.com/resume`

The main site (`website/vercel.json`) rewrites `/resume` to the Cloudflare Worker that serves this HTML + PDF.

Also published via GitHub Pages (`docs/`) at `https://vee1e.github.io/resume/` — meta tags always point at the lverma.com canonical and OG card.

## Files

| Path | Role |
|------|------|
| `Lakshit_Verma_Resume.tex` | Resume content source |
| `resume.cls` | LaTeX class |
| `index.html` | Landing page template (indexable HTML + download CTA) |
| `docs/` | GitHub Pages publish dir (`index.html`, PDF, thumbnails) |
| `og-thumbnail.png` | Full-page preview shown on the landing page |
| `og-card.png` | 1200×630 social share card (also mirrored to `website/public/assets/resume-og.png`) |
| `robots.txt` / `sitemap.xml` | Crawl discovery |

## Build notes

1. Compile the PDF from LaTeX when content changes.
2. Refresh `og-thumbnail.png` from the rendered page if the layout changes.
3. Keep HTML body sections in `index.html` / `docs/index.html` in sync with the TeX (skills, experience, education).
4. Social image URL is hard-coded to `https://lverma.com/assets/resume-og.png` so previews work on every host.
