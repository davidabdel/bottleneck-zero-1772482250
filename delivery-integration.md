# Post-Purchase Delivery Integration (Stripe Payment Link)

## Current assets
- Checkout URL: `https://checkout.uconnect.com.au/b/dRm14n74a1ducN3eD3eIw0z`
- Success page: `landing/success.html`
- Download package: `product/bottleneck-zero-v1.zip`

## Stripe configuration needed (dashboard)
1. Open the Payment Link in Stripe Dashboard.
2. Set **After payment** redirect to your published success URL:
   - `https://<your-public-domain>/landing/success.html`
3. Ensure receipt emails are enabled in Stripe (Customer emails).
4. Optional hardening: add a support contact in receipt footer.

## Publish requirement
Deploy the `generated/bottleneck-zero/` directory as one static site so both:
- `/landing/success.html`
- `/product/bottleneck-zero-v1.zip`
are publicly reachable.

## Security note
After launch cutover, rotate any previously exposed Stripe keys/tokens and update local env secrets.
