class Grade < ApplicationRecord
  belongs_to :user
  has_many :comments

  validates :user, :letter_grade, presence: true #In order to create a grade, you MUST have a user

  resourcify
end
