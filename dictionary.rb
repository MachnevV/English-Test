# i      я        люблю     работаю
# you    ты       любишь    работаешь
# we     мы       любим     работаем
# they   они      любят     работают
# he     он       любит     работает
# she    она      любит     работает

#время и сутиация
#  1.вопрос 2.утверждение 3.отрицание   - будещее
#  4.вопрос 5.утверждение 6.отрицание   - настоящее
#  7.вопрос 8.утверждение 9.отрицание   - прошлое

# для 1 4 7 зн ? в конце
# для 2 5 8 
# для 3 6 9 чатица не перед глаголом

# для 1 2 3 всегда глагол в простой форме меняется только слово быть от местоимения 
# для 4 5 6 
#


situations = [1, 2, 3, 4, 5, 6, 7, 8, 9]
situation = situations[rand(9)]

pronouns = ["я", "ты", "мы", "они", "он", "она"]
pronoun = pronouns[rand(6)]

others = ["лето", "солнце", "кошек", "собак", "небо"]
other = others[rand(5)]

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


puts situation
if (situation == 1)
    puts pronoun + " " + sklonenie(pronoun, "буду", "будешь", "будем", "будут", "будет", "будет") + " работать " + "?"
elsif (situation == 2)
    puts pronoun + " " + sklonenie(pronoun, "буду", "будешь", "будем", "будут", "будет", "будет") + " работать "
elsif (situation == 3)
    puts pronoun + " не " + sklonenie(pronoun, "буду", "будешь", "будем", "будут", "будет", "будет") + " работать "
elsif (situation == 4)
    puts pronoun + " " + sklonenie(pronoun, "работаю", "работаешь", "работаем", "работают", "работает", "работает") + " ?"
elsif (situation == 5)
    puts pronoun + " " + sklonenie(pronoun, "работаю", "работаешь", "работаем", "работают", "работает", "работает")
elsif (situation == 6)
    puts pronoun + " не " + sklonenie(pronoun, "работаю", "работаешь", "работаем", "работают", "работает", "работает") 
elsif (situation == 7)
    puts pronoun + " " + sklonenie(pronoun, "работал", "работал", "работали", "работали", "работал", "работала") + " ?"
elsif (situation == 8)
    puts pronoun + " " + sklonenie(pronoun, "работал", "работал", "работали", "работали", "работал", "работала")
elsif (situation == 9)
    puts pronoun + " не " + sklonenie(pronoun, "работал", "работал", "работали", "работали", "работал", "работала")
end

if (situation == 1)
    puts pronoun + " " + sklonenie(pronoun, "буду", "будешь", "будем", "будут", "будет", "будет") +
" любить " + other + "?"
elsif (situation == 2)
    puts pronoun + " " + sklonenie(pronoun, "буду", "будешь", "будем", "будут", "будет", "будет") +
" любить " + other 
elsif (situation == 3)
    puts pronoun + " не " + sklonenie(pronoun, "буду", "будешь", "будем", "будут", "будет", "будет") +
" любить " + other
elsif (situation == 4)
    puts pronoun + " " + sklonenie(pronoun, "люблю", "любишь", "любим", "любят", "любит", "любит") +
" " + other + " ?"
elsif (situation == 5)
    puts pronoun + " " + sklonenie(pronoun, "люблю", "любишь", "любим", "любят", "любит", "любит") +
" " + other 
elsif (situation == 6)
    puts pronoun + " не " + sklonenie(pronoun, "люблю", "любишь", "любим", "любят", "любит", "любит") +
" " + other 
elsif (situation == 7)
    puts pronoun + " " + sklonenie(pronoun, "любил", "любил", "любили", "любили", "любил", "любила") +
" " + other + " ?"
elsif (situation == 8)
    puts pronoun + " " + sklonenie(pronoun, "любил", "любил", "любили", "любили", "любил", "любила") +
" " + other 
elsif (situation == 9)
    puts pronoun + " не " + sklonenie(pronoun, "любил", "любил", "любили", "любили", "любил", "любила") +
" " + other 
end