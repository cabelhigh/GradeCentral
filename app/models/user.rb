class User < ApplicationRecord
  has_many :grades
  has_many :comments
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :assign_role
  def assign_role
    add_role(:student)
  end
end
