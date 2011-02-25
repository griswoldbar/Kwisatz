# == Schema Information
# Schema version: 20110224204344
#
# Table name: round_questions
#
#  id          :integer         not null, primary key
#  round_id    :integer
#  question_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class RoundQuestion < ActiveRecord::Base
  belongs_to :round
  belongs_to :question
end
