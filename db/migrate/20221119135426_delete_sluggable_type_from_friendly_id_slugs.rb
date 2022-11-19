class DeleteSluggableTypeFromFriendlyIdSlugs < ActiveRecord::Migration[7.0]
  def change
    remove_column :friendly_id_slugs, :sluggable_type, :string
  end
end
