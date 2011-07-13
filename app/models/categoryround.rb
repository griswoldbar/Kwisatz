# == Schema Information
# Schema version: 20110713172022
#
# Table name: categoryrounds
#
#  id          :integer         not null, primary key
#  round_id    :integer
#  category_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Categoryround < ActiveRecord::Base
  belongs_to :round
  belongs_to :category
end
