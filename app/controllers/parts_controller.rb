class PartsController < ApplicationController
  before_action :set_songs, only: [:index, :new, :create]
  def index
    @songs = Song.all
    @parts = Part.all
  end

  def new
    @part = Part.new
    @song_1 = @songs.first
    @song_2 = @songs.second
  end

  def create
    @part = Part.new(part_params)
    if @part.save
      redirect_to parts_path
    else
      render :new
    end
  end

  def edit
    @part = Part.find(params[:id])
    @songs = Song.all
    @song_1 = @songs.first
    @song_2 = @songs.second
  end

  def update
    @part = Part.find(params[:id])
    if @part.update(part_params)
      redirect_to parts_path
    else
      render :edit
    end
  end

  def destroy
    @part = Part.find(params[:id])
    @part.destroy
    redirect_to parts_path
  end


  private

  def set_songs
    @songs = Song.all
  end

  def part_params
    params.require(:part).permit(:nickname, :song_part_id_1, :song_part_id_2).merge(user_id: current_user.id)
  end
end