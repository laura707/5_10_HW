class PostsController < ApplicationController
    def index
        
    end
    
    def show
        @post=Post.find(params[:id])  
        @comments=@post.comments
    end
    
    def write
         @posts=Post.all.order("id desc")#new 코드! 순차적으로 글 쓴 것들이 쌓이는 형식#@posts=Post.all
         #post.image=params[:id]#post.image=params[:ImageUploader]#NEW
    end
    #작성 위해 폼 제공
    def create
    #@title=params[:post_title]
    #title에 post_title에 쓴 내용이 저장됨, content또한 마찬가지
    #@content=params[:post_content]
    #params에 해당하는 부분들이 각 변수들에게 저장된다.
        post=Post.new
        post.title=params[:post_title]
        post.image=params[:file]#NEW
        post.content=params[:post_content]#NEW
        post.save #윗 내용 저장
        redirect_to :back
    #게시글 하나 만들겠음
    #보여줄 필요가 없으니 @생략
    #실제 디비에 저장되는 프로세스
    end

    def destroy
        post=Post.find(params[:id])#게시글 id를 찾아서! 라우트에서 넘겨준 그 아이디!
        post.destroy!#찾았으면 걔 지워
        
        redirect_to :back#얘도 프로세스 기능이므로 루트 디렉토리로 넘겨줌
    end
    
    def edit#게시글 수정
        @post=Post.find(params[:post_id])
    end
    
    def update#그리고 이를 실제로 수행하는 프로세스
        post=Post.find(params[:post_id])
        post.title=params[:post_title]
        post.content=params[:post_content]
        post.save
        
        redirect_to '/'
    end
end