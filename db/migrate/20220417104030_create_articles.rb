class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.text :title, :presence => true
      t.text :content, :presence => true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
