Factory.define :user do |user|
  user.first_name   "Dorky"
  user.last_name    "McDork"
  user.email        "dork@dork.com"
  user.encrypted_password     "wibble"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :game do |game|
  game.name "Let's get quizzy"
  game.association :creator, :factory => :user
  
end
Factory.define :question do |question|
  question.genre  "History"
  question.text   "Who shot JFK?"
  question.association :creator, :factory => :user
end

Factory.define :answer do |answer|
  answer.text "Lee Harvey Oswald"
  answer.veracity true
  answer.association :question
end

Factory.define :round do |round|
  round.association :creator, :factory => :user
end