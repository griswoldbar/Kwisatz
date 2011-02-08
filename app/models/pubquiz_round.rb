# == Schema Information
# Schema version: 20110208104019
#
# Table name: rounds
#
#  id         :integer         not null, primary key
#  type       :string(255)
#  creator_id :integer
#  created_at :datetime
#  updated_at :datetime
#  name       :string(255)
#

class PubquizRound < Round
  
  
end
