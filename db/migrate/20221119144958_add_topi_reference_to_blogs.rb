class AddTopiReferenceToBlogs < ActiveRecord::Migration[7.0]
  def change
    add_reference :blogs, :topi, foreign_key: true
  end
end
