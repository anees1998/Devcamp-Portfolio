class AddSubtitleToPortfolios < ActiveRecord::Migration[7.0]
  def change
    add_column :portfolios, :subtitle, :string
  end
end
