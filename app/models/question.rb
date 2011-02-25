# == Schema Information
# Schema version: 20110224204344
#
# Table name: questions
#
#  id         :integer         not null, primary key
#  text       :string(255)
#  answer     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Question < ActiveRecord::Base

  has_many :round_questions
  has_many :rounds, :through => :round_questions
end
