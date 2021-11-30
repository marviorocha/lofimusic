class AlbumsController < ApplicationController
  before_action :set_albums, only: %i[edit update destroy]

  include ArtistHelper
  def index
    @title = 'All Albums | LofiMusic'
    @albums = Album.all
  end

  def new
    @title = 'New Album | LofiMusic'
    response = api_artist(nil)
    @json = JSON.parse response
    @albums = Album.new
  end

  def create
    response = api_artist(nil)
    @json = JSON.parse response
    @albums = Album.new(albums_params)
    respond_to do |format|
      if @albums.save
        format.html { redirect_to albums_path, notice: 'A new album was successfully created' }
      else
        format.html { render :new, alert: @albums.errors.full_messages }
      end
    end
  end

  def edit
    @title = 'Edit Album | LofiMusic'
    response = api_artist(nil)
    @json = JSON.parse response
  end

  def update
    response = api_artist(nil)
    @json = JSON.parse response
    respond_to do |format|
      if @albums.update(albums_params)
        format.html { redirect_to albums_path, notice: "The album (<b>#{@albums.name}</b>) was successfully updated.".html_safe }

      else
        format.html { render :edit, status: :unprocessable_entity }

      end
    end
  end

  def destroy
    @albums.destroy
    respond_to do |format|
      format.html { redirect_to albums_path, notice: "The album (<b>#{@albums.name}</b>) was successfully updated.".html_safe }
    end
  end

  private

  def set_albums
    @albums = Album.find(params[:id])
  end

  def albums_params
    params.require(:album).permit(:name, :artist, :year)
  end
end
