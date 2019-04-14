class ReviewsController < ApplicationController
  def top

  end


  
  def show
	@review = Review.find(params[:id])
  end

  def index
	@reviews_all = Review.all
	@review_new = Review.new
	#@rerere = Review.find(id: 1)
  end

  def create
	review=Review.new(review_params)
	review.save
	flash[:notice]="Book was successfully created."
	redirect_to review_path(review)
	
  end


  def edit
	@review = Review.find(params[:id])
  end

  def update
	review = Review.find(params[:id])
	review.update(review_params)
	flash[:notice]="Book was successfully updated"
	redirect_to review_path(review)

  end

  def destroy
	review = Review.find(params[:id])
	review.destroy
	redirect_to reviews_path
  end

  private
  def review_params
    params.require(:review).permit(:title, :body)
  end

end
