class MySchoolsController < ApplicationController
  before_filter :authenticate_user!

  def create
    @my_school = MySchool.new(my_school_params)
    @my_school.user_id = current_user.id
    @school = School.find_by id:@my_school.school_id
    @my_school.name = @school.Institution_Name
    @my_school.save
    if @my_school.save
      num = @school.follow
      num += 1
      @school.update(follow:num)
      flash[:notice] = "Add to list successfully."
    else
      flash[:notice] = "Already in your list."
    end
    redirect_to mylist_path
  end
  
  def addSchool
    @my_school = MySchool.new
    @my_school.user_id = current_user.id
    @my_school.name = params[:name]
    @my_school.school_id = params[:school_id]
    @school = School.find_by id:params[:school_id]

    if @my_school.save 
      num = @school.follow
      num += 1
      @school.update(follow:num)
      flash[:notice] = "Add to list successfully."
    else
      flash[:notice] = "Already in your list."
    end
    redirect_to (:back)
  end

  
  def destroy
    school = School.find_by id:MySchool.find(params[:id]).school_id
    num = school.follow
    num -= 1
    school.update follow: num
    
    MySchool.find(params[:id]).destroy
    redirect_to mylist_path 
  end
  
  def index
  end

  def show
  end

  def new
  end
  
  def edit
  end
  
  def update
  end
  
  
  def my_school_params
    params.require(:my_school).permit(:name, :comment, :school_id, :user_id, :follow)
  end
  

end
