### A Pluto.jl notebook ###
# v0.20.16

using Markdown
using InteractiveUtils

# This Pluto notebook uses @bind for interactivity. When running this notebook outside of Pluto, the following 'mock version' of @bind gives bound variables a default value (instead of an error).
macro bind(def, element)
    #! format: off
    return quote
        local iv = try Base.loaded_modules[Base.PkgId(Base.UUID("6e696c72-6542-2067-7265-42206c756150"), "AbstractPlutoDingetjes")].Bonds.initial_value catch; b -> missing; end
        local el = $(esc(element))
        global $(esc(def)) = Core.applicable(Base.get, el) ? Base.get(el) : iv(el)
        el
    end
    #! format: on
end

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

# ╔═╡ 49602540-eb21-4c23-9f8c-3d8b819e52ef
md"""
# Highlights from PlutoUI
"""

# ╔═╡ 2ba9d691-131d-4117-ac3c-73e55ff392b1
md"""
You can use `NotebookCard` to create a nice link to another notebook.

Use the **URL to the notebook** as the argument.
"""

# ╔═╡ 90d3ea39-f38d-4def-8bcb-24f25f25c95a
NotebookCard("https://bmlip.github.io/course/minis/Distributions%20in%20Julia.html")

# ╔═╡ 3031b716-08a7-49fc-aaea-2ad518d6093a


# ╔═╡ 941c371c-11a2-4aee-9729-c1ec276c3460
md"""
## Sliders
"""

# ╔═╡ ec874161-66ed-4079-81ac-b22db2328614
md"""
You can use `@bind` or `@bindname`, together with `Slider` to create interactive variables:
"""

# ╔═╡ bd00941b-4d75-40a8-a918-dff43bcc8bdd
@bind apples Slider(10:100)

# ╔═╡ c1f5b643-7134-4cc9-9681-c25923c3cc0f


# ╔═╡ c2e1c65d-9e25-43c8-ab11-10038e604046
md"""
With `@bindname`, the name of the variable is shown:
"""

# ╔═╡ f7e7c401-6d27-4ea5-b8d8-6956abcc702e
@bindname pears Slider(10:100)

# ╔═╡ 232807a9-864c-4857-97e4-2436fdd458c0


# ╔═╡ d29a2dfd-07a1-4f73-801d-f227d0a198b0
md"""
You can use the `default` keyword argument to `Slider`:
"""

# ╔═╡ 769a62f1-e112-48a0-a053-f751bca34143
@bindname oranges Slider(10:100; default=90)

# ╔═╡ 608c6f32-a525-4e81-ba7c-08c0b347317a
pears

# ╔═╡ dba7271d-fe4b-4058-ba5e-d2cd3b72f158


# ╔═╡ 02ea98fd-46d3-4c70-a04a-39f606aebbe9
md"""
To see all the possible input widgets, take a look at the PlutoUI docs:
"""

# ╔═╡ eb795e2b-c246-47b6-a45d-d60d211eb325
NotebookCard("https://featured.plutojl.org/basic/plutoui.jl")

# ╔═╡ 66b93f27-9eda-445c-b4b1-1bf36cf74a3a


# ╔═╡ e8d501b1-5424-4fdd-aa72-8ebdc5b4f7e3
md"""
# From PlutoTeachingtools:
"""

# ╔═╡ 73c6b1e4-52e7-42b4-82f7-c3ff0a951dfc
NotebookCard

# ╔═╡ 1b8ada7b-4996-4d75-baea-cc1f6ac74f5b
hint("Here is a secret tip!")

# ╔═╡ 3af20543-447f-4525-ad99-6f4ccdc2b96e
TODO("I still need to do this!")

# ╔═╡ 21016357-2813-4f74-adab-ddde0b8b704b


# ╔═╡ 9f42a11b-97bd-4a7d-94c9-ba74494ae4d0
md"""
# Appendix
"""

# ╔═╡ 45c6db01-38ac-4779-a724-af8ac3a0ac66
HiddenDocs(mod, name) = details(
	@htl("Show docstring for <code>$name</code>"), 
	@htl """
	<div class="pluto-docs-binding">
	<span id="$(name)">$(name)</span>
	$(Base.Docs.doc(Base.Docs.Binding(mod, name)))
	</div>
	""")

# ╔═╡ 577cd8a0-ccb8-4470-9bdb-99f9936407f5
HiddenDocs(@__MODULE__, :NotebookCard)

# ╔═╡ e1561b0f-b544-4bf0-bf6c-d96c43b689c2
md"""
## Headers
"""

# ╔═╡ ca9c15b6-d9fc-4855-bc9b-734b112ea033
title(contents) = @htl """<secret-h1 style="
	font-size: 3rem; 
	border-bottom: none; 
	text-shadow: -3px 3px #a2d4ff5c;
	font-family: 'Vollkorn', Palatino, Georgia, serif;
	color: var(--pluto-output-h-color);
	font-weight: 700;
	">$contents</secret-sh1>"""

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
	export challenge_statement
	challenge_solution(args...; kwargs...) = 
		section_outline("Challenge Revisited:", args...; color="red", kwargs...)
	export challenge_solution
	
	exercise_statement(args...; prefix="", kwargs...) = 
		section_outline("$(prefix)Exercise:", args...; color="yellow", kwargs...)
	export exercise_statement

	exercises(suffix=""; prefix="", kwargs...) = 
		section_outline("$(prefix)Exercises", suffix; color="yellow", kwargs...)
	export exercises

	
end

# ╔═╡ 24dd4ffe-372a-402d-ae49-27a4cfb6430c
challenge_statement("Throwing dice")

# ╔═╡ 38946e4f-6c20-4b3a-9203-81b6b76fee66
challenge_solution("Throwing dice")

# ╔═╡ 9bf5caa5-f7cb-4d43-a760-b8b67229eb2d
exercise_statement("Your turn")

# ╔═╡ cd6c79de-3d26-4877-9e56-4c59d9d36535
exercise_statement("Your turn"; prefix="Inference ")

# ╔═╡ 3b7b2e83-c1db-44ad-ad4e-52752c3e4d51
exercises()

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
hide_solution(md"""
It's trivial!

```math
x = x
```

""")

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
# ╠═cd6c79de-3d26-4877-9e56-4c59d9d36535
# ╠═3b7b2e83-c1db-44ad-ad4e-52752c3e4d51
# ╟─3f9e46d2-cc98-4a7e-a270-b033b09d349c
# ╠═ed2f0fe9-0078-44c8-a0d2-4f25c50fddaa
# ╟─e4fd31f0-5ee6-43d9-a2f8-6e555a69b860
# ╠═5f298ea0-ce92-411d-9a50-6d7964ab51e2
# ╟─49602540-eb21-4c23-9f8c-3d8b819e52ef
# ╟─2ba9d691-131d-4117-ac3c-73e55ff392b1
# ╠═90d3ea39-f38d-4def-8bcb-24f25f25c95a
# ╟─577cd8a0-ccb8-4470-9bdb-99f9936407f5
# ╟─3031b716-08a7-49fc-aaea-2ad518d6093a
# ╟─941c371c-11a2-4aee-9729-c1ec276c3460
# ╟─ec874161-66ed-4079-81ac-b22db2328614
# ╠═bd00941b-4d75-40a8-a918-dff43bcc8bdd
# ╟─c1f5b643-7134-4cc9-9681-c25923c3cc0f
# ╟─c2e1c65d-9e25-43c8-ab11-10038e604046
# ╠═f7e7c401-6d27-4ea5-b8d8-6956abcc702e
# ╟─232807a9-864c-4857-97e4-2436fdd458c0
# ╟─d29a2dfd-07a1-4f73-801d-f227d0a198b0
# ╠═769a62f1-e112-48a0-a053-f751bca34143
# ╠═608c6f32-a525-4e81-ba7c-08c0b347317a
# ╟─dba7271d-fe4b-4058-ba5e-d2cd3b72f158
# ╟─02ea98fd-46d3-4c70-a04a-39f606aebbe9
# ╟─eb795e2b-c246-47b6-a45d-d60d211eb325
# ╟─66b93f27-9eda-445c-b4b1-1bf36cf74a3a
# ╟─e8d501b1-5424-4fdd-aa72-8ebdc5b4f7e3
# ╠═73c6b1e4-52e7-42b4-82f7-c3ff0a951dfc
# ╠═1b8ada7b-4996-4d75-baea-cc1f6ac74f5b
# ╠═3af20543-447f-4525-ad99-6f4ccdc2b96e
# ╟─21016357-2813-4f74-adab-ddde0b8b704b
# ╟─9f42a11b-97bd-4a7d-94c9-ba74494ae4d0
# ╟─45c6db01-38ac-4779-a724-af8ac3a0ac66
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
