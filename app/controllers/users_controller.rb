class UsersController < ApplicationController
    def new
        
    end
    
    def create
        user=User.new
        user.myid=params[:myid]
        user.password=params[:password]#오타 주의!!!!!!!
        user.save
        
        redirect_to '/sessions/login'
    end
end
