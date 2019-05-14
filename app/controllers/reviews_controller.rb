class ReviewsController < ApplicationController
  # before_action :find_review, only: [:new, :create]
#class RestaurantsController < ApplicationController

  def new           # GET /reviews/new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create        # POST /reviews
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
