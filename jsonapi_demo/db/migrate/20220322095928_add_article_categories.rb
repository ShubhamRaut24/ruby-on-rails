class AddArticleCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :article_categories, :article_id, :int
    add_column :article_categories, :category_id, :int
  end
end
