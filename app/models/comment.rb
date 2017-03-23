class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :grade
  validates :comment, :user, :grade, presence: true
end
