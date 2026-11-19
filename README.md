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
| `docs/` | GitHub Pages publish dir (PDF, thumbnails, `robots.txt`, `sitemap.xml`) |

## Build notes

1. Build locally with `./build.sh`. To write straight into the publish dir, run `./build.sh docs/Lakshit_Verma_Resume.pdf`.
2. GitHub Actions (`.github/workflows/compile-resume.yml`) automatically compiles `docs/Lakshit_Verma_Resume.pdf` and `docs/og-thumbnail.png` on push and deploys `docs/` to `gh-pages`.
