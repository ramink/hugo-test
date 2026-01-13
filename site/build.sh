#!/usr/bin/env bash

#------------------------------------------------------------------------------
# @file
# Builds a Hugo site hosted on a Cloudflare Worker.
#
# The Cloudflare Worker automatically installs Node.js dependencies.
#------------------------------------------------------------------------------

main() {
  BASE_URL="https://hugo-qtest.pages.dev"

  echo "Listing content files:"
  echo "-----------------------------------------------------------------"
  find content -print

  # Build the site
  echo "Building the site..."
  hugo --gc --minify --baseURL "$BASE_URL"

  echo "Listing resulting public files:"
  echo "-----------------------------------------------------------------"
  find public -print
}

set -euo pipefail
main "$@"
