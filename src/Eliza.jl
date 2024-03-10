module Eliza

    # If include is not used then precompile does not work because the local modules are not in LOAD_PATH

    include("vocab/bot.jl")
    include("vocab/types/typing.jl")

    using .Vocabulary

    export BotVocab
    export searcher

    function searcher(txt::String, bot::BotVocab)
        
        regx = ""

        for question in bot.questions

            regx = regx * question * "|"

        end

        regx = "$(regx[1:end - 1])"

        # Regex is important because match requires a Regex type as first argument
        m = match(Regex(regx), txt)

        if isnothing(m)

            return "I don't know"

        else

            for question in bot.questions

                if m.match == question

                    return bot()[m.match]

                end

            end

        end
        
    end

end # module Eliza