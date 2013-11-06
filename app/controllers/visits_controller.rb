class VisitsController < ApplicationController
  def show
    @url = Url.find(params[:id])
    Visit.create(:url_id => params[:id])
    redirect_to @url.original_url
  end
end