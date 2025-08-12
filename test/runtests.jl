using BmlipTeachingTools
using Test
using Markdown

@testset "Basic API" begin
    
    r(x) = repr(MIME"text/html"(), x) != ""
    
    
    @test r(inference_example("asdf"))
    @test r(code_example("asdf"))
    @test r(hide_solution("asdf"; open=false))
    @test r(hide_proof(md"asdf"))
    
    
    
    # PlutoTeachingTools reexport
    @test r(keyconcept("asdf", "asdf"))
    
    # PlutoUI reexport
    Slider(1:10)
    TableOfContents()
    
    # HypertextLiteral reexport
    @test r(@htl "asdf")
    
end