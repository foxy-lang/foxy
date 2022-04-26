#!/bin/bash

# Vars
slndir="$(dirname "${BASH_SOURCE[0]}")/src"

# Restore + Build
dotnet build "$slndir/foxy.sln" --nologo || exit

# Test
dotnet test "$slndir/Foxy.Tests" --nologo --no-build
