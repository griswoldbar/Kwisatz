# == Schema Information
# Schema version: 20110206200745
#
# Table name: question_tokens
#
#  id          :integer         not null, primary key
#  question_id :integer
#  round_id    :integer
#  position    :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class QuestionToken < ActiveRecord::Base
  belongs_to :question
  belongs_to :round
  validates :question_id, :numericality => {:only_integer => true}
end
