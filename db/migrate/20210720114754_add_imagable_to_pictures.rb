class AddImagableToPictures < ActiveRecord::Migration[5.2]
  def change
    add_reference :pictures, :imagable, polymorphic: true
  end
end
