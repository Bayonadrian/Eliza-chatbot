using Eliza: searcher, BotVocab

chatbot= begin

    bot_inst = BotVocab(["Hello", "Bye"], ["Hello, how are you?", "Good bye"])
    bot_inst()

end

prompt_reply= begin

    bot_inst = BotVocab(["Hello", "Bye"], ["Hello, how are you?", "Good bye"])
    search = searcher("Hello", bot_inst)

end
