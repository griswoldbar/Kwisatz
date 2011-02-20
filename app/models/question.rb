# == Schema Information
# Schema version: 20110220124517
#
# Table name: questions
#
#  id         :integer         not null, primary key
#  text       :string(255)
#  answer     :string(255)
#  round_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Question < ActiveRecord::Base

  belongs_to :round
end
