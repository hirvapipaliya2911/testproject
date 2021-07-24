class User < ApplicationRecord
  enum role: [ :user, :admin ]
  has_one :picture ,as: :imagable,dependent: :destroy
  has_many :comments, dependent: :destroy
  accepts_nested_attributes_for :picture
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
