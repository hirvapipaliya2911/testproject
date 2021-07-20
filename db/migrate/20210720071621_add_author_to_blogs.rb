class AddAuthorToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_reference :blogs, :author, foreign_key: true
  end
end
