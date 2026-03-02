# Smoke Test — 2026-03-02

## Local static-site checks (completed)
- `GET /landing/index.html` → 200 OK
- `GET /landing/success.html` → 200 OK
- `GET /product/bottleneck-zero-v1.zip` → 200 OK (downloadable zip)

## Post-publish checks (pending)
1. Open public landing URL and click checkout button.
2. Complete Stripe test/live transaction for $27.
3. Confirm redirect reaches `/landing/success.html`.
4. Confirm zip download link works from success page.
5. Confirm Stripe receipt email sent.
6. Verify refund policy text visible on landing and/or checkout.

## Deployment attempt log
- 2026-03-02: `npx --yes vercel deploy generated/bottleneck-zero --yes --token "$VERCEL_TOKEN"` → failed (`token invalid`).
- Unblock documented in `launch-unblock.md`.
