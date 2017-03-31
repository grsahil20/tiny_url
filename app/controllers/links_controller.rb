class LinksController < ApplicationController
  def index
    @link = Link.new
    @links = Link.page(params[:page])
  end

  def create
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js do
        @link = Link.create(url_params)
      end
    end
  end

  def new
    respond_to do |format|
      format.html { redirect_to :index }
      format.js
    end
  end

  def search_and_redirect
    if link = Link.search_code(params[:query]).first
      redirect_to link.url
    else
      redirect_to root_path , notice: 'Invalid Url'
    end
  end

  private

  def url_params
    params.require(:link).permit(:url)
  end
end
