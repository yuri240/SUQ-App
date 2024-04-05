class SongsController < ApplicationController
  MAX_SONGS = 2

  def new
    @song = Song.new
    @songs = Song.all
  end

  def create
    if Song.count >= MAX_SONGS
      flash[:alert] = "曲の保存数が上限に達しています。"
      redirect_to new_song_path
    else
      @song = Song.new(song_params)
      if @song.save
        redirect_to parts_path, notice: "曲が追加されました"
      else
        render :new
      end
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to parts_path, notice: "曲名を削除しました"
  end

  
  private

  def song_params
    params.require(:song).permit(:song_title)
  end

end
