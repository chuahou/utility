#!/bin/bash
#
# Installs rust.
#
# Do NOT run as ROOT.

# check not root
$(dirname "$0")/check_root.sh user || exit 1

# install rust
curl https://sh.rustup.rs -sSf | sh -s -- -y
