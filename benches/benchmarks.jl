# SPDX-License-Identifier: MPL-2.0
# (PMPL-1.0-or-later preferred; MPL-2.0 required for Julia ecosystem)
# BenchmarkTools benchmarks for Hyperpolymath.jl.
# Benchmarks source-file I/O operations since this is an umbrella package.

using BenchmarkTools

const SRC_PATH = joinpath(@__DIR__, "..", "src", "Hyperpolymath.jl")

println("=== Hyperpolymath.jl Benchmarks ===")

# --- Source file I/O ---

println("\n-- Source file read --")

# Small: check file existence (stat only).
b_exists = @benchmark isfile($SRC_PATH)
println("isfile check: ", median(b_exists))

# Medium: read full source as String.
b_read = @benchmark read($SRC_PATH, String)
println("read source as String: ", median(b_read))

# Large: read and split into lines.
b_lines = @benchmark readlines($SRC_PATH)
println("readlines: ", median(b_lines))

# --- String pattern matching ---

println("\n-- Pattern matching on source --")

src_content = read(SRC_PATH, String)

b_contains = @benchmark contains($src_content, "module Hyperpolymath")
println("contains 'module Hyperpolymath': ", median(b_contains))

b_count = @benchmark count("using", $src_content)
println("count 'using' occurrences: ", median(b_count))
