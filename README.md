<!--
SPDX-License-Identifier: CC-BY-SA-4.0
SPDX-FileCopyrightText: 2025-2026 Jonathan D.A. Jewell <j.d.a.jewell@open.ac.uk>
-->

[![OpenSSF Best Practices](https://img.shields.io/badge/OpenSSF-Best_Practices-green?logo=opensourcesecurity)](https://www.bestpractices.dev/en/projects/new?repo_url=https://github.com/hyperpolymath/Hyperpolymath.jl)
[![Topology](https://img.shields.io/badge/Project-Topology-9558B2)](TOPOLOGY.md)
[![100](https://img.shields.io/badge/Completion-100%25-green)](TOPOLOGY.md)
[![License: PMPL-1.0](https://img.shields.io/badge/License-MPL--2.0-blue.svg)](https://github.com/hyperpolymath/palimpsest-license) <embed
src="https://api.thegreenwebfoundation.org/greencheckimage/github.com"
data-link="https://www.thegreenwebfoundation.org/green-web-check/?url=github.com" />
![Metapackage](https://img.shields.io/badge/Status-Metapackage-blue.svg)

**The Everything Bundle for the Hyperpolymath Julia Ecosystem.**

# Overview

Hyperpolymath.jl is a **metapackage** (a bundle) that provides a
convenient way to install and load the entire Hyperpolymath Julia
Ecosystem at once.

# Installation

## 1. The Full Bundle (Recommended for Research)

To install all 29 packages in the ecosystem:

```julia
using Pkg
Pkg.add("Hyperpolymath")
```

## 2. Selective Installation (Minimalist)

If you only need specific disciplinary modules, you do **not** need to
install this metapackage. Instead, add only the packages you need from
their subdirectories:

```julia
using Pkg
# Example: Only install Causals and InvestigativeJournalist
Pkg.add(url="https://github.com/your-org/julia-ecosystem.git", subdir="packages/Causals.jl")
Pkg.add(url="https://github.com/your-org/julia-ecosystem.git", subdir="packages/InvestigativeJournalist.jl")
```

# Usage

```julia
using Hyperpolymath

# Now you can use EVERYTHING:
# - InvestigativeJournalist for forensics
# - Causals for inference
# - JuliaKids for teaching
# - LowLevel for assembly optimization
# - PostDisciplinary to link them all together

p = PostDisciplinary.ResearchProject("The Everything Project")
```

# Contained Modules

This metapackage re-exports:

- <a href="packages/Axiom.jl" class="jl">Axiom</a>,
  <a href="packages/Axiology.jl" class="jl">Axiology</a>,
  <a href="packages/SMTLib.jl" class="jl">SMTLib</a>,
  <a href="packages/ZeroProb.jl" class="jl">ZeroProb</a>,
  <a href="packages/PolyglotFormalisms.jl"
  class="jl">PolyglotFormalisms</a>

- <a href="packages/ProvenCrypto.jl" class="jl">ProvenCrypto</a>,
  <a href="packages/InvestigativeJournalist.jl"
  class="jl">InvestigativeJournalist</a>

- <a href="packages/Cliodynamics.jl" class="jl">Cliodynamics</a>,
  <a href="packages/Cliometrics.jl" class="jl">Cliometrics</a>,
  <a href="packages/Causals.jl" class="jl">Causals</a>

- <a href="packages/TradeUnionist.jl" class="jl">TradeUnionist</a>,
  <a href="packages/PRComms.jl" class="jl">PRComms</a>,
  <a href="packages/Exnovation.jl" class="jl">Exnovation</a>,
  <a href="packages/BowtieRisk.jl" class="jl">BowtieRisk</a>

- <a href="packages/JuliaKids.jl" class="jl">JuliaKids</a>,
  <a href="packages/KnotTheory.jl" class="jl">KnotTheory</a>,
  <a href="packages/Skein.jl" class="jl">Skein</a>,
  <a href="packages/HackenbushGames.jl" class="jl">HackenbushGames</a>,
  <a href="packages/Cladistics.jl" class="jl">Cladistics</a>

- <a href="packages/PostDisciplinary.jl" class="jl">PostDisciplinary</a>,
  <a href="packages/JuliaPackage-Reuse-Audit.jl"
  class="jl">JuliaPackageSpitter</a>,
  <a href="packages/MacroPower.jl" class="jl">MacroPower</a>,
  <a href="packages/ShellIntegration.jl" class="jl">ShellIntegration</a>,
  <a href="packages/MinixSDK.jl" class="jl">MinixSDK</a>,
  <a href="packages/LowLevel.jl" class="jl">LowLevel</a>
