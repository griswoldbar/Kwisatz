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
  validates :round_id, :numericality => {:only_integer => true}
  validates :position, :numericality => {:only_integer => true}
  validates_uniqueness_of :question_id, :scope => :round_id
  validates_uniqueness_of :position, :scope => :round_id
end
