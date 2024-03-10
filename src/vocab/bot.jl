module Vocabulary

    include("types/typing.jl")

    # ..Typing: Vocab if include("types/typing.jl") not used
    # with export: Just .Typing is required instead of .Typing: Question, Answer
    using .Typing: Question, Answer
    export BotVocab

    mutable struct BotVocab
        questions:: Vector{Union{String, Question}}
        answers::Vector{Union{String, Answer}}

        function BotVocab(questions, answers)

            if typeof(questions) != Vector{String}

                throw("Questions must be String")

            elseif typeof(answers) != Vector{String}

                throw("Answers must be strings")

            elseif isempty(questions) == true

                throw("Questions cannot be empty")

            elseif length(questions) != length(answers)

                throw("Questions and answers must have the same longitude")

            else

                new(questions, answers)

            end
        end
    end

    function (Bot::BotVocab)()

        questions = Bot.questions

        answers = Bot.answers

        return Dict(questions .=> answers)
        
    end
    
end
