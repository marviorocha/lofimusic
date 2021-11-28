module Api
  class ArtistListController < ApplicationController
    include ArtistHelper
    def index
      response = api_artist(nil)
      render json: response, status: :ok
    end

    def show; 
      response = api_artist(params[:id])
      render json: response, status: :ok
    end
  end
end
