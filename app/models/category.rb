# == Schema Information
# Schema version: 20110713144404
#
# Table name: categories
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Category < ActiveRecord::Base
  has_many :questions
  has_many :categoryrounds
  has_many :rounds, :through => :categoryrounds
end
