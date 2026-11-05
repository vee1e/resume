# CV/Resume

Resume source in Typst and the compiled PDF for **https://lverma.com/resume**.

Inspired (shamelessly copied) from https://github.com/sohomdatta1/cv.

## Preferred public URL

**Canonical:** `https://lverma.com/resume`

The main site (`website/vercel.json`) rewrites `/resume` to the compiled PDF served by the Cloudflare Worker.

Also published via GitHub Pages (`docs/`) at `https://vee1e.github.io/resume/`.

## Files

| Path | Role |
|------|------|
| `Lakshit_Verma_Resume.typ` | Resume content source |
| `fonts-cm/` | Computer Modern fonts converted from TeX to OpenType, with AFM kerning |
| `build.sh` | Build script |
| `docs/` | GitHub Pages publish dir (PDF, thumbnails) |
| `og-card.png` | 1200x630 social share card (also mirrored to `website/public/assets/resume-og.png`) |
| `og-thumbnail.png` | Full-page preview of the resume PDF |
| `robots.txt` / `sitemap.xml` | Crawl discovery |


## Build notes

1. Build with `./build.sh`. To write straight into the publish dir, run `./build.sh docs/Lakshit_Verma_Resume.pdf`.
2. Refresh `og-thumbnail.png` from the rendered PDF if the layout changes:
   `pdftoppm -png -r 300 -singlefile docs/Lakshit_Verma_Resume.pdf docs/og-thumbnail`
3. Social image URL is hard-coded to `https://lverma.com/assets/resume-og.png` so previews work on every host.
