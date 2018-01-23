class CrawlersController < ApplicationController
  before_action :set_crawler, only: [:show, :update, :destroy]

  # GET /crawlers
  def index
    @crawlers = Crawler.all

    render json: @crawlers
  end

  # GET /crawlers/1
  def show
    render json: @crawler
  end

  # POST /crawlers
  def create
    @crawler = Crawler.new(crawler_params)

    if @crawler.save
      render json: @crawler, status: :created, location: @crawler
    else
      render json: @crawler.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /crawlers/1
  def update
    if @crawler.update(crawler_params)
      render json: @crawler
    else
      render json: @crawler.errors, status: :unprocessable_entity
    end
  end

  # DELETE /crawlers/1
  def destroy
    @crawler.destroy
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_crawler
    @crawler = Crawler.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def crawler_params
    params.require(:crawler).permit(:site_url, :contents)
  end
end
