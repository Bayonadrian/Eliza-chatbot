include("src/Eliza.jl")

# Eliza export does not work with import
using .Eliza

bot = BotVocab(["Hello", "Bye", "Help"], 
               ["Hello, how are you?", "Good bye", "How can I help you?"])

line = readline()

chatbot= searcher(line, bot)

println(chatbot)