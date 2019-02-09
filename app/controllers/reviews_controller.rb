# ReviewsController
class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update]
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      redirect_to restaurant_path(@review.restaurant)
    else
      render :new
    end
  end

  def show; end

  def edit; end

  def update
    if @review.update(review_params)
      redirect_to review_path(@review)
    else
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @restaurant = @review.restaurant
    @review.destroy
    redirect_to restaurant_path(@restaurant)
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
