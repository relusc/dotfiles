#!/bin/bash

# Small script that installs VSCode extensions exported to a file (in this case the file is named "extensions")
# List VSCode extensions: 'code --list-extensions'

set -euo pipefail

while read -r line; do code --install-extension "$line"; done < extensions.txt
