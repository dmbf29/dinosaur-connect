class ProfilesController < ApplicationController

  def new
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
    @profile = Profile.new
    @powers = Power.where.not(id: @dinosaur.powers).order(:name)
  end

  def create
    @dinosaur = Dinosaur.find(params[:dinosaur_id])
    @profile = Profile.new(profile_params)
    @profile.dinosaur = @dinosaur
    if @profile.save
      redirect_to park_path(@dinosaur.park)
    else
      @powers = Power.where.not(id: @dinosaur.powers).order(:name)
      render :new
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:power_id)
  end
end
