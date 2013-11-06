class UrlsController < ApplicationController
  def index
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)
    # :user_id => current_user.id
    @url.user_id = current_user.id
    if @url.save
      redirect_to url_path(@url.id)
    else 
      redirect_to '/', notice: "Please enter an entire URL."
    end
  end

  def show
    @url = Url.find(params[:id])
  end

private

  def url_params 
    params.require(:url).permit(:original_url)
  end
end