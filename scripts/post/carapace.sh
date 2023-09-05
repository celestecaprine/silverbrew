#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

tmpfile=$(mktemp)

curl -LJ https://github.com/rsteube/carapace-bin/releases/download/v0.27.0/carapace-bin_0.27.0_linux_amd64.rpm -o $tmpfile
rpm -iv $tmpfile
