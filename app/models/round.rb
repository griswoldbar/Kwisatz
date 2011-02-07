# == Schema Information
# Schema version: 20110206194334
#
# Table name: rounds
#
#  id         :integer         not null, primary key
#  game_id    :integer
#  type       :string(255)
#  creator_id :integer
#  position   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Round < ActiveRecord::Base
  belongs_to :game
  belongs_to :creator, :class_name => "User"
  has_many :question_tokens
  has_many :questions, :through => :question_token
  
#  validates :game_id, :presence => true
  
end
