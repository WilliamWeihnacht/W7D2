class BandsController < ApplicationController

    def index
        @bands = Band.all
        render :index
    end

    def create
        @band = Band.new(band_params)
        @band.save!
        redirect_to bands_url
    end

    def new
        @band = Band.new
        render :new
    end

    def edit
        @band = Band.find_by(band_params)
    end

    def show
        render :show
    end

    def update

    end

    def destroy

    end

    private
    def band_params
        params.require(:band).permit(:name)
    end
end
