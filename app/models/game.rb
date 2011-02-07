# == Schema Information
# Schema version: 20110206194334
#
# Table name: games
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  creator_id :integer
#  created_at :datetime
#  updated_at :datetime
#

class Game < ActiveRecord::Base
  
  has_many :round_tokens
  has_many :rounds, :through => :round_tokens
  belongs_to :creator, :class_name => "User"
  
  validates :name, :presence => true
  
end
