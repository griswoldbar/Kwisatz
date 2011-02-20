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
  validates :game_id, :numericality => {:only_integer => true}
  validates :round_id, :numericality => {:only_integer => true}
  validates :position, :numericality => {:only_integer => true}

  validates_uniqueness_of :round_id, :scope => :game_id
  validates_uniqueness_of :position, :scope => :game_id
end
