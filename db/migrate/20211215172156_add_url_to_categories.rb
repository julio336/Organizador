class AddUrlToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :url, :text
  end
end
