class ChangeDescriptionTypeForArticles < ActiveRecord::Migration[6.1]
  def change
    change_column :articles, :description, :text, limit: 16.megabytes - 1
  end
end
