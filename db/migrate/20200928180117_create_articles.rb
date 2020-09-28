class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :category
      t.string :source 
      t.string :author
      t.string :description
      t.string :content
      t.string :publishedat
      t.string :url

      t.timestamps
    end
  end
end
