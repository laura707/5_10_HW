class PostsController < ApplicationController
    def index #index.html.erb에 보여질 것임
      
    end
    
    def show #show.html.erb에 보여질 것임
        @post=Post.find(params[:id])  
        @comments=@post.comments
        
        @user_myid=""
        unless session[:user_id].nil?
            @user_myid=User.find(session[:user_id]).myid
        end
        #로그인 정보 보여주기 위함
    end
    
    def new
    
    end
    
    def write #write.html.erb에 보여질 것임
        @posts=Post.all.order("id desc")#순차적으로 글 쓴 것들이 쌓이는 형식
       
        @user_myid=""
        unless session[:user_id].nil?
            @user_myid=User.find(session[:user_id]).myid
        end
        #로그인 정보 보여주기 위함
    end
    
    def create
        post=Post.new
        post.title=params[:post_title]
        post.image=params[:pic]#이미지 기능
        post.content=params[:post_content]
        post.save #윗 내용 저장
        
        redirect_to :back
    #게시글 하나 만들겠음
    #보여줄 필요가 없으니 @생략
    #실제 디비에 저장되는 프로세스
    end

    def destroy
        post=Post.find(params[:id])#게시글 id를 찾아서! 라우트에서 넘겨준 그 아이디!
        post.destroy#찾았으면 걔 지워
        
        redirect_to :back#얘도 프로세스 기능
    end
    
    def edit#게시글 수정, edit.html.erb에 보여질 것임
        @post=Post.find(params[:post_id])
    end
    
    def update#그리고 이를 실제로 수행하는 프로세스
        post=Post.find(params[:post_id])
        post.title=params[:post_title]
        post.content=params[:post_content]
        post.save
        
        redirect_to '/posts/write'
    end
end