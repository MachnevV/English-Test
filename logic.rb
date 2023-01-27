work_verb = {
  #"verb_root" => "работ", # бег, плав, куш, дум 
  "pretext_variants" => {
    "прошлое" => "",
    "настоящее" => "",
    "будущее" => {
      "я" => "буду ",
      "вы" => "будете ",
      "мы" => "будем ",
      "они" => "будут ",
      "он" => "будет ",
      "она" => "будет "
    } 
  },
  "pronoun_variants" => {
    "прошлое" => {
      "я" => "ал",
      "вы" => "али",
      "мы" => "али",
      "они" => "али",
      "он" => "ал",
      "она" => "ала"
    },
    "настоящее" => {
      "я" => "аю",
      "вы" => "аете",
      "мы" => "аем",
      "они" => "ают",
      "он" => "ает",
      "она" => "ает"
    },
    "будущее" => {
      "я" => "ать",
      "вы" => "ать",
      "мы" => "ать",
      "они" => "ать",
      "он" => "ать",
      "она" => "ать"
    }
  }
}
 
actions = ["вопрос", "утверждение", "отрицание"]
time_of_actions = ["будущее", "настоящее", "прошлое"]
pronouns = ["я", "вы", "мы", "они", "он", "она"]
array_verbs = ["работ", "бег", "плав", "куш", "дум"] # зн, покуп, разруш, поним, чит, встреч, обуч, мечт, игр, начин, помог, открыв, закрыв
#others = ["лето", "солнце", "кошек", "собак", "небо"]  // пока не применяется. добавлю в версии 2

# метод для выбора случайного элемента из массива
def get_random_element(elements)
  elements.sample
end

def get_sentence(verb, actions, time_of_actions, pronouns, array_verbs)
  action = get_random_element(actions)
  time_of_action = get_random_element(time_of_actions)
  pronoun = get_random_element(pronouns)
  verb_root = get_random_element(array_verbs)

  puts "time_of_action: #{time_of_action}" + " / " + "action: #{action}" + " / " + "verb: #{verb_root}"

  case action
  when "вопрос"
    builded_verb = build_verb(verb, time_of_action, pronoun, verb_root)
    builded_pretext = build_pretext(verb, time_of_action, pronoun)
    sentence_constructor(action, pronoun, builded_verb, builded_pretext)
    
  when "утверждение"
    builded_verb = build_verb(verb, time_of_action, pronoun, verb_root)
    builded_pretext = build_pretext(verb, time_of_action, pronoun)
    sentence_constructor(action, pronoun, builded_verb, builded_pretext)
    
  else
    builded_verb = build_verb(verb, time_of_action, pronoun, verb_root)
    builded_pretext = build_pretext(verb, time_of_action, pronoun)
    sentence_constructor(action, pronoun, builded_verb, builded_pretext)
  end
end

# Метод собирает глагол с нужным окончанием
def build_verb(verb, time_of_action, pronoun, verb_root)
  
  verb_ending = verb["pronoun_variants"][time_of_action][pronoun]

  verb_result = "#{verb_root}#{verb_ending}"
end

# Метод собирает предлог перед глаголом
def build_pretext(verb, time_of_action, pronoun)
  pretext_result = verb["pretext_variants"][time_of_action][pronoun]
end

# Метод собирает предложение целиком
def sentence_constructor(action, pronoun, builded_verb, builded_pretext)
  case action
  when "вопрос"
    puts "#{pronoun} #{builded_pretext}#{builded_verb} ?"
  when "утверждение"
    puts "#{pronoun} #{builded_pretext}#{builded_verb}"
  else
    puts "#{pronoun} не #{builded_pretext}#{builded_verb}"
  end
end

# puts "Генерация предложения на рус.языке. Версия 1:"
puts get_sentence(work_verb, actions, time_of_actions, pronouns, array_verbs)