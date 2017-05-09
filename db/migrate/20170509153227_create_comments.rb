class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :post_id#무조건 정수, 게시글과 연결된 모델 이름이어야 함
      
      t.timestamps null: false
    end
  end
end
