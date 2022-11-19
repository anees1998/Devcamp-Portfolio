class RemoveSubtitleFromBlogs < ActiveRecord::Migration[7.0]
  def change
    remove_column :blogs, :subtitle, :string
  end
end
