# == Schema Information
# Schema version: 20110203221824
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  first_name         :string(255)
#  last_name          :string(255)
#  email              :string(255)
#  salt               :string(255)
#  encrypted_password :string(255)
#  admin              :boolean
#  created_at         :datetime
#  updated_at         :datetime
#

class User < ActiveRecord::Base
  has_many :games
  has_many :rounds
  has_many :questions
end
