# == Schema Information
# Schema version: 20110203223058
#
# Table name: answers
#
#  id          :integer         not null, primary key
#  question_id :integer
#  text        :string(255)
#  veracity    :boolean
#  created_at  :datetime
#  updated_at  :datetime
#

class Answer < ActiveRecord::Base
  belongs_to :question
end
