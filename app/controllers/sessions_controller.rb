class SessionsController < ApplicationController
    def new
        
    end
    
    def create
        user=User.where(myid: params[:myid], password: params[:password]).take
        unless user.nil?
            session[:user_id] = user.id
        end
        
        redirect_to '/posts/write' #로그인 정보 저장한 후에는 무조건 write화면으로
    end
    
    def destroy
        reset_session
        
        redirect_to '/posts/write' #로그아웃 한 후에는 무조건 write화면으로
    end
end
