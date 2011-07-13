# == Schema Information
# Schema version: 20110713172022
#
# Table name: questions
#
#  id          :integer         not null, primary key
#  text        :string(255)
#  answer      :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  difficulty  :integer
#  category_id :integer
#

class Question < ActiveRecord::Base
  has_many :roundquestions
  belongs_to :category
  has_many :rounds, :through => :roundquestions
end
