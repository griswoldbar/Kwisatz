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
  
  has_many :rounds
  belongs_to :user
  
end