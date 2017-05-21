class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :myid
      t.string :password
      
      t.timestamps null: false
    end
  end
end
#rake db:drop, migrate 할 것 꼭!!! 변수명s 라는 이름이 붙는다. db에 내용들이 차곡차곡 쌓이기 위한 코드, db에 저장하기 위함
#Q : t.string과 t.text의 차이는??