#rails g model comments하면서 생긴 파일
class Comment < ActiveRecord::Base
    belongs_to :post
end
#rails g model comment 하면 232325252...라는 db migrate파일도 자동 생성
#특정 댓글은 특정 게시글에 반드시 속해있다. 단수,복수 동사에 유의