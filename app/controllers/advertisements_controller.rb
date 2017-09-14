class AdvertisementsController < ApplicationController
  def index
    @advertisements= Advertisement.all
  end

  def show
    @advertisements= Advertisement.find(params[:id])
  end

  def new
    @advertisement = Advertisment.new
  end

  def create
    @advertisment = Advertisment.new
    @advertisment.title = paramas[:advertisment][:title]
    @advertisment.copy= paramas[:advertisment][:body]
    @advertisment.title = paramas[:advertisment][:price]

    if @advertisment.save
      flash[:notice] = "Advertisment was saved"
      redirect_to @advertisement
    else
      flash[:error] = "There was an error saving the advertisement"
      render:new
    end
 
  end
end
