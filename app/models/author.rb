class Author < ApplicationRecord
	has_many :blogs, dependent: :destroy
	validates :name,uniqueness: true
end
