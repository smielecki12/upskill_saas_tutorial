class Contact < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :comments, presence: true
  validates :name, length: { minimum: 2 }
  validates :comments, length: { maximum: 500 }
  {  too_long: "%{500} characters is the maximum allowed" }
end