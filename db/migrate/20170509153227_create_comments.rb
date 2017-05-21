class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.integer :post_id#무조건 정수, 게시글과 연결된 모델 이름이어야 함
      
      t.timestamps null: false
    end
  end
end
#rake db:drop, migrate 할 것 꼭!!! 변수명s 라는 이름이 붙는다. db에 내용들이 차곡차곡 쌓이기 위한 코드, db에 저장하기 위함