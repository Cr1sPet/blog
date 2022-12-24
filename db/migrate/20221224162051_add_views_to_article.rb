class AddViewsToArticle < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :views, :integer, :default => 0
  end
end
