# == Schema Information
# Schema version: 20110203221824
#
# Table name: questions
#
#  id         :integer         not null, primary key
#  type       :string(255)
#  genre      :string(255)
#  text       :string(255)
#  creator_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Question < ActiveRecord::Base
  has_many :answers
  has_many :question_tokens
  has_many :rounds, :through => :question_token
  belongs_to :creator, :class_name => "User"
end
