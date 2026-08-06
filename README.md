# CV/Resume

Resume source (LaTeX) and compiled PDF for **https://lverma.com/resume**.

Inspired (shamelessly copied) from https://github.com/sohomdatta1/cv.

## Preferred public URL

**Canonical:** `https://lverma.com/resume`

The main site (`website/vercel.json`) rewrites `/resume` to the compiled PDF served by the Cloudflare Worker.

Also published via GitHub Pages (`docs/`) at `https://vee1e.github.io/resume/`.

## Files

| Path | Role |
|------|------|
| `Lakshit_Verma_Resume.tex` | Resume content source |
| `resume.cls` | LaTeX class |
| `docs/` | GitHub Pages publish dir (PDF, thumbnails) |
| `og-card.png` | 1200×630 social share card (also mirrored to `website/public/assets/resume-og.png`) |
| `og-thumbnail.png` | Full-page preview of the resume PDF |
| `robots.txt` / `sitemap.xml` | Crawl discovery |

## Build notes

1. Compile the PDF from LaTeX when content changes.
2. Refresh `og-thumbnail.png` from the rendered PDF if the layout changes.
3. Social image URL is hard-coded to `https://lverma.com/assets/resume-og.png` so previews work on every host.
