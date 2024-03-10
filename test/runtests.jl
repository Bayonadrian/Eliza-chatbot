using Eliza: searcher
using Test

@testset "Eliza.jl" begin
    @test searcher("Help me") == "How can I help you?"
end