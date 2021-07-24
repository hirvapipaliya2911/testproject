class Blog < ApplicationRecord
	belongs_to :author
	validates :title, presence: true, uniqueness: true
	has_many :comments
	has_many :pictures, as: :imagable, dependent: :destroy
	accepts_nested_attributes_for :pictures
end
