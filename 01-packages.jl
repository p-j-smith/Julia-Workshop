# Packages

# Adding packages to the environment.
# In the julia terminal, press `]` to go into pkg shell
# Then type: `add BenchmarkTools`
# Benchmark tools is then available in the environemnt for import.
# It is added to the environment's Project.toml and Manifest.toml

# Importing packages in the current script
# For the difference between `using` and `import`, see:
# https://stackoverflow.com/questions/27086159/what-is-the-difference-between-using-and-import-in-julia-when-building-a-mod
using Statistics
using BenchmarkTools

# removing packages
# `rm BenchmarkTools`

# adding an specific version
# `add BenchmarkTools@1.2.0`

# Project.toml and Manifest.toml
# `status -m` to see contents of Manifest.toml

# updating packages
# `up BenchmarkTools`

# cleaning outdated or unused packages
# In the pkg shell, type `gc --all`
# Will remove all unused packages (e.g. old versions of packages that have been updated)
