class RemoveSlugFromBlogs < ActiveRecord::Migration[7.0]
  def change
    remove_column :blogs, :slug, :string
  end
end
