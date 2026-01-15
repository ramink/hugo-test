#!/usr/bin/env bash

#------------------------------------------------------------------------------
# @file
# Builds a Hugo site hosted on a Cloudflare Worker.
#
# The Cloudflare Worker automatically installs Node.js dependencies.
#------------------------------------------------------------------------------

main() {
  echo "Listing content files:"
  echo "-----------------------------------------------------------------"
  find content -print

  # Build the site
  echo "Building the site..."
  echo 'hugo --gc --minify'
  hugo --gc --minify

  echo "Listing resulting public files:"
  echo "-----------------------------------------------------------------"
  find public -print
}

set -euo pipefail
main "$@"
