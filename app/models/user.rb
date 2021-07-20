class User < ApplicationRecord
  has_one :picture 
  has_many :comments
  accepts_nested_attributes_for :picture
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
