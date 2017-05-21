class User < ActiveRecord::Base
    def change
        create_table :users do |t|
        t.string :myid#변수 이름 설정
        t.string :password
        
        t.timestamps null: false
        end
    end    
end
#rails g model user 하면 232325252...라는 db migrate파일도 자동 생성
