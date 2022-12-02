# i      я        люблю     работаю
# you    ты       любишь    работаешь
# we     мы       любим     работаем
# they   они      любят     работают
# he     он       любит     работает
# she    она      любит     работает


#require_relative "dictionary"

#puts "Генерация предложения на рус.языке. Версия 1:"
#puts 

pronouns = ["я", "ты", "мы", "они", "он", "она"]
pronoun = pronouns[rand(6)]

verbs = ["работать", "любить", "бегать", "плавать", "худеть", "прыгать"]
verb = verbs[rand(6)]

def sklonenie(pronoun, i, you, we, they, he, she)
    if (pronoun == "я")
        return i
    elsif (pronoun == "ты")
        return you
    elsif (pronoun == "мы")
        return we
    elsif (pronoun == "они")
        return they
    elsif (pronoun == "он")
        return he
    elsif (pronoun == "она")
        return she
    end
end

puts pronoun + " " + sklonenie(pronoun, "буду", "будешь", "будем", "будут", "будет", "будет") + " " + verb    