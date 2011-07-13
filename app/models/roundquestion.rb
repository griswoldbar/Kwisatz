# == Schema Information
# Schema version: 20110712183301
#
# Table name: roundquestions
#
#  id          :integer         not null, primary key
#  round_id    :integer
#  question_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Roundquestion < ActiveRecord::Base
  belongs_to :round
  belongs_to :question
end
