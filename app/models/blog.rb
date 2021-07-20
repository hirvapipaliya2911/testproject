class Blog < ApplicationRecord
	belongs_to :author
	validates :title , presence: true
	has_many :comments
	has_many :pictures, as: :imagable
	accepts_nested_attributes_for :comments
	accepts_nested_attributes_for :pictures
end
