# == Schema Information
# Schema version: 20110712183301
#
# Table name: questions
#
#  id         :integer         not null, primary key
#  text       :string(255)
#  answer     :string(255)
#  created_at :datetime
#  updated_at :datetime
#  category   :string(255)
#  difficulty :integer
#

class Question < ActiveRecord::Base
  has_many :roundquestions
  has_many :rounds, :through => :roundquestions
end
