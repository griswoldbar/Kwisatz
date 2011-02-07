# == Schema Information
# Schema version: 20110207220123
#
# Table name: rounds
#
#  id         :integer         not null, primary key
#  type       :string(255)
#  creator_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Round < ActiveRecord::Base

  belongs_to :creator, :class_name => "User"
  has_many :question_tokens
  has_many :questions, :through => :question_tokens
  has_many :round_tokens
  has_many :games, :through => :round_tokens
  
#  validates :game_id, :presence => true
  
end
