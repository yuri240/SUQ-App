class PartsController < ApplicationController
  before_action :set_songs, only: [:index, :new, :create]
  def index
    @songs = Song.all
    @parts = Part.all
  end

  def new
    @part = Part.new
    @songs = Song.all
    @song_1 = @songs.first
    @song_2 = @songs.second
  end

  def create
    @part = Part.new(part_params)
    if @part.save
      redirect_to parts_path, notice: "ニックネームと曲が登録されました"
    else
      render :new
    end
  end

  private

  def set_songs
    @songs = Song.all
  end

  def part_params
    params.require(:part).permit(:nickname, :song_part_id_1, :song_part_id_2)
  end
end