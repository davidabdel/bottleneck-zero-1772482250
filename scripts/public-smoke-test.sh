#!/usr/bin/env bash
set -euo pipefail

if [ $# -lt 1 ]; then
  echo "Usage: $0 <public_base_url>"
  echo "Example: $0 https://bottleneck-zero-abc123.vercel.app"
  exit 1
fi

BASE_URL="${1%/}"

check() {
  local path="$1"
  local code
  code=$(curl -s -o /dev/null -w "%{http_code}" "$BASE_URL$path")
  if [ "$code" != "200" ]; then
    echo "❌ $path -> HTTP $code"
    exit 1
  fi
  echo "✅ $path -> HTTP 200"
}

echo "Running public smoke test against: $BASE_URL"
check "/landing/index.html"
check "/landing/success.html"
check "/product/bottleneck-zero-v1.zip"

echo "\nManual checks still required:"
echo "- Complete $27 Stripe payment"
echo "- Confirm redirect to /landing/success.html"
echo "- Confirm Stripe receipt email"
