class WhaleAppsController < ApplicationController
  def index
    @whale_apps = WhaleApp.all
  end

  def new
    @whale_app = WhaleApp.new
  end

  def create
    @whale_app = WhaleApp.new(whale_app_params)
    if @whale_app.save
      redirect_to @whale_app
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def whale_app_params
    params.require(:whale_app).permit(:app_id, :name)
  end
end
