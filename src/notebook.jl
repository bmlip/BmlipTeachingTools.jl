### A Pluto.jl notebook ###
# v0.20.15

using Markdown
using InteractiveUtils

# ╔═╡ 90ad6438-7fd5-422c-a0f4-52a220919194
# ╠═╡ skip_as_script = true
#=╠═╡
# This cell activates the package environment from the package. This cell is "Disabled in file" (see the grey line on the right), because we don't want to call Pkg.activate when people use this package.
begin
	import Pkg
	Pkg.activate("..")
	Pkg.instantiate()
end
  ╠═╡ =#

# ╔═╡ 214ecd8c-2483-4fb0-a3ae-6adc58f17e14
# The dependency imports are here in a different cell, so that these don't get "Disabled in file". If this would happen, then all anything that depends on these packages get "Disabled in file" indirectly, and nothing would work.
begin
	using PlutoTeachingTools, PlutoUI
	using HypertextLiteral
end

# ╔═╡ 6ca174aa-6395-485d-a396-83e220dbfcb7
#=╠═╡
md"""
_Documentation for BmlipTeachingTools **version $(Pkg.project().version |> string)**._
"""
  ╠═╡ =#

# ╔═╡ d49c5051-7e42-463e-9457-0c515cd5c046
md"""
## How to use BmlipTeachingTools
**Add this code** to your notebook:

```julia
using BmlipTeachingTools
```

This package re-exports PlutoTeachingTools, PlutoUI and HypertextLiteral, so you should **remove those imports**.
"""

# ╔═╡ 30ac81f5-a086-43ae-bbf7-853ef8bed7ac


# ╔═╡ 8a334eac-7129-4e42-bc01-1eee63219720


# ╔═╡ bfb4762c-3027-47b2-bf78-128b379b6c68


# ╔═╡ 3f9e46d2-cc98-4a7e-a270-b033b09d349c


# ╔═╡ e4fd31f0-5ee6-43d9-a2f8-6e555a69b860
md"""
You can use `open=true` to show the box open by default.
"""

# ╔═╡ 9f42a11b-97bd-4a7d-94c9-ba74494ae4d0
md"""
# Appendix
"""

# ╔═╡ e1561b0f-b544-4bf0-bf6c-d96c43b689c2
md"""
## Headers
"""

# ╔═╡ ca9c15b6-d9fc-4855-bc9b-734b112ea033
title(contents) = @htl """<h1 style="font-size: 3rem; border-bottom: none; text-shadow: -3px 3px #a2d4ff5c;">$contents</h1>"""

# ╔═╡ dab90f4b-5451-466f-a1d1-7128429884d0
title("Examples of using BmlipTeachingTools.jl")

# ╔═╡ af1bcfdb-7776-481b-a85f-ffff428850b5
export title

# ╔═╡ c614a8f5-5724-4f3c-8447-ff18425f8e77
_something_example(sth) = function(args...; kwargs...)
    section_outline("$sth Example:", args...; kwargs...)
end

# ╔═╡ 8b144173-d002-4c6d-82bd-07c8e8921ddd
begin
	const inference_example = _something_example("Inference")
	export inference_example
	const code_example = _something_example("Code")
	export code_example
	const example = _something_example("")
	export example
end

# ╔═╡ a0912faa-ba08-48fd-b03e-fa0f0b27c690
inference_example("Hello there")

# ╔═╡ 1cb34632-8657-42e5-ab0c-00b9e66ca24c
code_example("Amazing stuff")

# ╔═╡ e764a873-dae5-4d98-b205-a9d1f8eb746b
example("Something else")

# ╔═╡ 8dc656fe-0b25-47fd-b087-3ca4b1057e94
_challenge_something(sth) = function(args...; kwargs...)
    section_outline("$sth:", args...; kwargs...)
end

# ╔═╡ 0fd086b3-81bf-4566-87cf-ec46ca19463e
begin
	challenge_statement(args...; kwargs...) = 
		section_outline("Challenge:", args...; color="red", kwargs...)
	challenge_solution(args...; kwargs...) = 
		section_outline("Challenge Revisited:", args...; color="red", kwargs...)
	export challenge_solution
	
	exercise_statement(args...; kwargs...) = 
		section_outline("Exercise:", args...; color="yellow", kwargs...)
	export exercise_statement
end

# ╔═╡ 24dd4ffe-372a-402d-ae49-27a4cfb6430c
challenge_statement("Throwing dice")

# ╔═╡ 38946e4f-6c20-4b3a-9203-81b6b76fee66
challenge_solution("Throwing dice")

# ╔═╡ 9bf5caa5-f7cb-4d43-a760-b8b67229eb2d
exercise_statement("Your turn")

# ╔═╡ a2704374-33c2-479e-bad0-1bac6c244db1
md"""
## Misc
"""

# ╔═╡ d0931a54-3bff-4f2d-ad60-eb45721dfa0f
begin
	"""
	```julia
	hide_proof(contents; open::Bool=false)
	```
	"""
	hide_proof(s; kwargs...) = details("Click to see proof", s; kwargs...)
	hide_proof(; kwargs...) = s -> hide_proof(s; kwargs...)
	export hide_proof
end

# ╔═╡ 5f298ea0-ce92-411d-9a50-6d7964ab51e2
md"""
It's trivial!

```math
x = x
```

""" |> hide_proof(open=true)

# ╔═╡ 06051ef2-08b0-4d7d-bff9-9c2d407c65cc
begin
	"""
	```julia
	hide_solution(contents; open::Bool=false)
	```
	"""
	hide_solution(s; kwargs...) = details("Click for the solution", s; kwargs...)
	hide_solution(; kwargs...) = s -> hide_solution(s; kwargs...)
	export hide_solution
end

# ╔═╡ ed2f0fe9-0078-44c8-a0d2-4f25c50fddaa
md"""
It's trivial!

```math
x = x
```

""" |> hide_solution

# ╔═╡ 6c723aec-e620-4820-b5e3-f7d55c4bb1dc


# ╔═╡ Cell order:
# ╟─6ca174aa-6395-485d-a396-83e220dbfcb7
# ╠═dab90f4b-5451-466f-a1d1-7128429884d0
# ╟─d49c5051-7e42-463e-9457-0c515cd5c046
# ╟─30ac81f5-a086-43ae-bbf7-853ef8bed7ac
# ╠═a0912faa-ba08-48fd-b03e-fa0f0b27c690
# ╠═1cb34632-8657-42e5-ab0c-00b9e66ca24c
# ╠═e764a873-dae5-4d98-b205-a9d1f8eb746b
# ╟─8a334eac-7129-4e42-bc01-1eee63219720
# ╠═24dd4ffe-372a-402d-ae49-27a4cfb6430c
# ╠═38946e4f-6c20-4b3a-9203-81b6b76fee66
# ╟─bfb4762c-3027-47b2-bf78-128b379b6c68
# ╠═9bf5caa5-f7cb-4d43-a760-b8b67229eb2d
# ╟─3f9e46d2-cc98-4a7e-a270-b033b09d349c
# ╠═ed2f0fe9-0078-44c8-a0d2-4f25c50fddaa
# ╟─e4fd31f0-5ee6-43d9-a2f8-6e555a69b860
# ╠═5f298ea0-ce92-411d-9a50-6d7964ab51e2
# ╟─9f42a11b-97bd-4a7d-94c9-ba74494ae4d0
# ╠═90ad6438-7fd5-422c-a0f4-52a220919194
# ╠═214ecd8c-2483-4fb0-a3ae-6adc58f17e14
# ╟─e1561b0f-b544-4bf0-bf6c-d96c43b689c2
# ╠═ca9c15b6-d9fc-4855-bc9b-734b112ea033
# ╠═af1bcfdb-7776-481b-a85f-ffff428850b5
# ╠═c614a8f5-5724-4f3c-8447-ff18425f8e77
# ╠═8b144173-d002-4c6d-82bd-07c8e8921ddd
# ╠═8dc656fe-0b25-47fd-b087-3ca4b1057e94
# ╠═0fd086b3-81bf-4566-87cf-ec46ca19463e
# ╠═a2704374-33c2-479e-bad0-1bac6c244db1
# ╠═d0931a54-3bff-4f2d-ad60-eb45721dfa0f
# ╠═06051ef2-08b0-4d7d-bff9-9c2d407c65cc
# ╠═6c723aec-e620-4820-b5e3-f7d55c4bb1dc
