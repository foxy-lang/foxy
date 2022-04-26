#!/bin/bash

# Vars
slndir="$(dirname "${BASH_SOURCE[0]}")/src"

# Restore + Build
dotnet build "$slndir/foxlib" --nologo || exit

# Run
dotnet run -p "$slndir/foxlib" --no-build
