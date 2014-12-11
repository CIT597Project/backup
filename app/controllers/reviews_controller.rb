class ReviewsController < ApplicationController
  def create
    @school = School.find(params[:school_id])
    @review = Review.create(review_params)
    @review.update(user_id:current_user.id)
    @review.update(school_id:@school.id)
    redirect_to school_path(@school)
  end
  
  def destroy
    @school=School.find(params[:school_id])
    Review.find(params[:id]).destroy
    redirect_to school_path(@school)
  end
  

  private
  def review_params
    params.require(:review).permit(:body)
  end
end
