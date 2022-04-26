#!/bin/bash

# Vars
slndir="$(dirname "${BASH_SOURCE[0]}")/src"

# Restore + Build
dotnet build "$slndir/fox" --nologo || exit

# Run
dotnet run --Project "$slndir/fox" --no-build -- "$@"
