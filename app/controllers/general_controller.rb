
class GeneralController < ApplicationController
  

  def ranking
     @schools=School.all.paginate(page: params[:page]).limit(25)
     render 'general/universities'
  end
  
  def hot_ranking
    @schools=School.order(:follow).reverse_order.paginate(page: params[:page]).limit(25)
    render 'general/hotuniversities'
  end
    
  
  def index
    @schools = School.search(params[:search]).paginate(:page=>params[:page])
    render 'general/universities'
  end
 
  def add_following
    @users=User.all.paginate(page: params[:page])
  end
  
  def search_friend
    @users = User.search(params[:search]).paginate(:page=>params[:page])
    render 'add_following'
  end
  
  
 
    

  
end
