class UrlsController < ApplicationController
  def index
  	@urls = Url.all
  end

  def create
  	@url = Url.new(url_params)
	@url.short_url =@url.generate_short_url
    @url.long_url = @url.sanitize
  	if @url.save
  		redirect_to urls_path
  	else
  		redirect_to new_url_path
  	end
  end

  def show
  	@url = Url.find_by(short_url: params[:short_url])
  	redirect_to @url.sanitize
  end

  private

  def url_params
  	params.permit(:long_url)
  end
end
