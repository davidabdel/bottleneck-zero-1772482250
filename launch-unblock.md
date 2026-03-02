# Bottleneck Zero — Launch Unblock Steps (Vercel)

## Current blocker (confirmed)
`npx vercel deploy generated/bottleneck-zero --yes --token $VERCEL_TOKEN` fails with:

> Error: The token provided via `--token` argument is not valid. Please provide a valid token.

## What is already prepared locally
- Static launch assets are complete in `generated/bottleneck-zero/`
- `landing/index.html` checkout CTA points to live Stripe payment URL
- `landing/success.html` exists with download CTA
- `product/bottleneck-zero-v1.zip` is build-ready and downloadable locally
- Local smoke checks passed for landing/success/zip paths

## Precise unblock steps
1. Create a fresh Vercel token (Dashboard → Settings → Tokens).
2. Update local env:
   - `.env.local` → `VERCEL_TOKEN=<new_token>`
3. Run deployment from workspace root:
   - `set -a; source .env.local; set +a`
   - `npx --yes vercel deploy generated/bottleneck-zero --yes --token "$VERCEL_TOKEN"`
4. Copy returned deploy URL into:
   - `generated/bottleneck-zero/deployment.json` (`vercel_url`)
5. Set Stripe Payment Link post-purchase redirect to:
   - `<vercel_url>/landing/success.html`
6. Run public smoke test:
   - `bash generated/bottleneck-zero/scripts/public-smoke-test.sh <vercel_url>`
7. Launch cutover hardening:
   - Rotate Stripe keys/tokens that were previously exposed.

## Optional one-liner after token refresh
```bash
set -a; source .env.local; set +a; \
URL=$(npx --yes vercel deploy generated/bottleneck-zero --yes --token "$VERCEL_TOKEN" | tail -n 1); \
echo "$URL"
```
