class Author < ApplicationRecord
	has_many :blogs, dependent: :destroy
	validates :name, presence: true, uniqueness: true
end
