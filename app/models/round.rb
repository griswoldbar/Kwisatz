# == Schema Information
# Schema version: 20110220124517
#
# Table name: rounds
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Round < ActiveRecord::Base

  has_many :round_questions
  has_many :questions, :through => :round_questions
  
end

