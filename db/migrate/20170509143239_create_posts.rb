class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      #string type
      t.text :content
      #text type
      t.string :image
      #string type
      
      t.timestamps null: false
    end
  end
end
#rake db:drop, migrate 할 것 꼭!!! 변수명s 라는 이름이 붙는다. db에 내용들이 차곡차곡 쌓이기 위한 코드, db에 저장하기 위함