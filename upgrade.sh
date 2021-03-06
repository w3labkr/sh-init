#!/bin/bash
#
# Download and run the latest release version.
# https://github.com/username/repository
#
# Usage
# git clone https://github.com/username/repository.git
# cd repository
# chmod +x ./update.sh
# ./update.sh

# Work even if somebody does "sh thisscript.sh".
set -e

# Make sure the script is running as root.
if [ "$(whoami)" != 'root' ]; then
  echo "Non-super admin users do not have permission to execute $0."
  echo "Use it as a super administrator."
  exit 0
fi

# Make sure you have git installed.
if [! command -v git &>/dev/null]; then
  echo >&2 "I require git but it's not installed.  Aborting."
  exit 1
fi

# Print a welcome message.
echo
echo "The upgrade begins."

# ...

# Print a completion message.
echo
echo "The upgrade is complete."
