class CommentsController < ApplicationController
    def create
        comment=Comment.new
        comment.content=params[:comment_content]
        comment.post_id=params[:post_id]
        comment.save
        
        redirect_to :back
        #다시 돌아가라!
    end
    
    #NEW
    def destroy
        comment=Comment.find(params[:id])
        comment.destroy!
        
        redirect_to :back#이 문법 기억할 것
    end
end
