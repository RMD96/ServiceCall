class RatingsController < ApplicationController
  def new
    @rating = Rating.new
    @professional = Professional.find(params[:professional_id])
  end

  def create
    @rating = current_user.ratings.build(rating_params)
    if @rating.save
      redirect_to professional_path(@rating.professional), notice: 'Rating and review submitted successfully.'
    else
      render :new
    end
  end

  private

  def rating_params
    params.require(:rating).permit(:rating, :comment, :professional_id)
  end
end
