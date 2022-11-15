class CreateBlogs < ActiveRecord::Migration[7.0]
  def change
    create_table :blogs do |t|
      t.string :Title
      t.text :Body

      t.timestamps
    end
  end
end
