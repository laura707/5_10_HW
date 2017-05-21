class Post < ActiveRecord::Base
    #1:다 의 관계를 지정하기 위해 여기에서 코드쓴다!
    has_many :comments
    mount_uploader :image, ImageUploader
end
#rails g model post 하면 232325252...라는 db migrate파일도 자동 생성
#Post는 아주 많은 comments를 가지고 있다
