class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      #string type
      t.text :content
      #text type
      
      t.timestamps null: false
    end
  end
end