# == Schema Information
# Schema version: 20110207220123
#
# Table name: round_tokens
#
#  id         :integer         not null, primary key
#  round_id   :integer
#  game_id    :integer
#  position   :integer
#  created_at :datetime
#  updated_at :datetime
#

class RoundToken < ActiveRecord::Base

  belongs_to :game
  belongs_to :round
end
