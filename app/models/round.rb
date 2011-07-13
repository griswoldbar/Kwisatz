# == Schema Information
# Schema version: 20110712183301
#
# Table name: rounds
#
#  id                     :integer         not null, primary key
#  name                   :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  category_count         :integer
#  questions_per_category :integer
#

class Round < ActiveRecord::Base


  has_many :roundquestions
  has_many :questions, :through => :roundquestions
  accepts_nested_attributes_for :questions, :allow_destroy => true


  
end

