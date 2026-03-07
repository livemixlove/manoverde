# Mano Verde

Landscaping/green decoration company website for Mexico City client. Single-page static HTML site (no build tools).

## Quick Start

- `index.html` — the entire site (HTML + embedded CSS + JS)
- `bash serve.sh` or `python3 -m http.server 8000 --bind 0.0.0.0` — local dev server
- See memory file `setup.md` for deployment, hosting, DNS, and client contact details

## Deploy

GitHub push does NOT auto-deploy. After pushing, deploy to Netlify with:

```bash
zip -r /tmp/manoverde-deploy.zip . -x '.git/*' 'images/extracted/*' 'images/pages/*' '*.sh' '.gitignore' && \
curl -s -H "Authorization: Bearer $(cat ~/.netlify-token)" \
  -H "Content-Type: application/zip" \
  --data-binary @/tmp/manoverde-deploy.zip \
  "https://api.netlify.com/api/v1/sites/09e1d5be-def6-44bc-a383-47b26d06d354/deploys" | \
  python3 -c "import sys,json; d=json.load(sys.stdin); print(f'Deploy: {d.get(\"state\")} - {d.get(\"deploy_ssl_url\",d.get(\"url\"))}')"
```

## Design System

- Colors: `--green-dark: #1B3B2D`, `--gold: #C5A449`, `--cream: #F2EDDF`
- Fonts: Montserrat (headings/body), Cormorant Garamond (accent/italic)
- All content is in Spanish
