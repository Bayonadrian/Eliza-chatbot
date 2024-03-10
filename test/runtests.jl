using Test

include("elizatests.jl")

@testset "Eliza.jl" begin
    @test chatbot == Dict("Hello" => "Hello, how are you?", "Bye" => "Good bye")
    @test prompt_reply == "Hello, how are you?"
end