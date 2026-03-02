# Bottleneck Zero v1 Sprint Status

## Delivered artifacts
- ✅ Landing page updated with live checkout URL: `landing/index.html`
- ✅ Checkout URL file updated: `checkout-url.txt`
- ✅ Launch content pack checkout URL updated: `launch-pack.md`
- ✅ Product package zipped for delivery: `product/bottleneck-zero-v1.zip`
- ✅ Post-purchase success page created: `landing/success.html`
- ✅ Delivery integration runbook added: `delivery-integration.md`
- ✅ Local smoke test executed and logged: `smoke-test.md`

## Remaining launch actions (manual/platform)
- ⏳ Publish static site publicly (landing + product zip + success page)
- ⏳ Configure Stripe Payment Link post-purchase redirect to public `landing/success.html`
- ⏳ Run end-to-end public payment smoke test ($27) and verify receipt email
- ⏳ Rotate exposed Stripe key material after launch cutover

## Acceptance criteria mapping
- Landing page URL publicly accessible: **Pending publish**
- Checkout link accepts $27 payment: **Ready link in assets; final verify pending live/public test**
- Product contents downloadable post-purchase: **Assets prepared + success page wired; pending public deploy/redirect**
- Launch content pack publish-ready: **Complete**
- No hardcoded secrets in committed files: **Pass**

## Blockers / notes
- Attempted Vercel publish from this environment failed due invalid token (`npx vercel deploy ... --token $VERCEL_TOKEN` returned token invalid).
- Added unblock runbook: `launch-unblock.md`.
- Added post-deploy checker: `scripts/public-smoke-test.sh`.
- `deployment.json` still has empty `vercel_url` until authenticated deploy is completed.
