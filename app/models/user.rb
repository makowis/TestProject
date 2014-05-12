# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :text
#  password_digest :string(255)
#  deleted_at      :datetime
#  created_at      :datetime
#  updated_at      :datetime
#

class User < ActiveRecord::Base
  has_secure_password
  acts_as_paranoid

  validates :name,
    presence: true,
    length: { :in => 3..20 },
    allow_blank: false
  validates :email,
    presence: true,
    uniqueness: true,
    allow_blank: false
  validates :password_digest,
    presence: true
end
