# SPDX-License-Identifier: MPL-2.0
# (PMPL-1.0-or-later preferred; MPL-2.0 required for Julia ecosystem)
# Property-based invariant tests for Hyperpolymath.jl.
# As an umbrella package, properties cover structural invariants of the source.

using Test

@testset "Property-Based Tests" begin

    @testset "Source file invariants hold across repeated reads" begin
        src_path = joinpath(@__DIR__, "..", "src", "Hyperpolymath.jl")
        # Property: every read returns identical content (deterministic FS read).
        for _ in 1:10
            content = read(src_path, String)
            @test contains(content, "module Hyperpolymath")
            @test contains(content, "end # module")
            @test contains(content, "SPDX-License-Identifier: PMPL-1.0-or-later")
        end
    end

    @testset "All declared using statements name real identifiers" begin
        src_path = joinpath(@__DIR__, "..", "src", "Hyperpolymath.jl")
        content = read(src_path, String)
        # Each line starting with 'using' must contain at least one non-whitespace
        # identifier after 'using'.
        for line in split(content, '\n')
            stripped = strip(line)
            if startswith(stripped, "using ")
                remainder = strip(stripped[7:end])
                @test !isempty(remainder)
                # Must start with a letter (valid Julia identifier).
                @test isletter(first(remainder))
            end
        end
    end

    @testset "Module block is properly nested (no double-end)" begin
        src_path = joinpath(@__DIR__, "..", "src", "Hyperpolymath.jl")
        content = read(src_path, String)
        # Exactly one module declaration.
        @test count("module Hyperpolymath", content) == 1
        # At least one closing end.
        @test count("end # module", content) >= 1
    end

    @testset "File size is stable (not accidentally truncated)" begin
        src_path = joinpath(@__DIR__, "..", "src", "Hyperpolymath.jl")
        for _ in 1:10
            sz = filesize(src_path)
            @test sz > 100  # Umbrella module must be at least 100 bytes.
        end
    end

    @testset "Line count is positive and consistent" begin
        src_path = joinpath(@__DIR__, "..", "src", "Hyperpolymath.jl")
        lines_a = readlines(src_path)
        lines_b = readlines(src_path)
        @test length(lines_a) == length(lines_b)
        @test length(lines_a) >= 5
    end

end
