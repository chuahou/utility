#!/bin/bash
#
# Installs Heroku CLI.
#
# Run as ROOT.

# check for root
$(dirname "$0")/check_root.sh root || exit 1

snap install --classic heroku
