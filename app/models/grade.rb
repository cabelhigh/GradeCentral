class Grade < ApplicationRecord
  belongs_to :user

  validates :user, :letter_grade, presence: true #In order to create a grade, you MUST have a user

  resourcify
end
