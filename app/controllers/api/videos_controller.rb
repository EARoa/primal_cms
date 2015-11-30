class Api::VideosController < ApplicationController

protect_from_forgery with: :reset_session

  def index
    @videos = Video.all
    render json: @videos
  end

  def create
    @video = Video.new(params.require(:video).permit(:title, :thumbnail, :videourl))
    @video.save
    render json: @video
  end

  def update
    @video = Video.find(params[:id])
    @video.update(params.require(:video).permit(:title, :thumbnail, :videourl))
    render json: @video
  end

end
