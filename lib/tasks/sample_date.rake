require 'faker'

namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    Rake::Task['db:reset'].invoke
    make_rounds
    make_questions
  end
end

def make_rounds
  round1=Round.create!(:name => "History")
end

def make_questions
  Round.all(:limit => 6).each do |round|
    round.questions.create!(:text => "Lee Harvey Oswald", :answer => "Who shot JFK?")
    29.times do
      round.questions.create!(:text => Faker::Lorem.sentence(5), :answer => Faker::Lorem.sentence(5))
    end
  end
end
