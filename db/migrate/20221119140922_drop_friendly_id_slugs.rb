class DropFriendlyIdSlugs < ActiveRecord::Migration[7.0]
  def change
    drop_table :friendly_id_slugs, froce: :cascade
  end
end
