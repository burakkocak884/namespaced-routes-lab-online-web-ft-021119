class Admin::PreferencesController < ApplicationController
  

	  def index
	  	@preferences = Preference.all
	  end


	  def show 
	  	@preference = Preference.find_by_id(params[:id])
	  end

	  def new
	  		@preference = Preference.new
	  end

	  def create

	  	@preference = Preference.create(preference_params)
	  end

	  def edit
	  	@preference = Preference.find_by_id(params[:id])
	  end





	  private

	  def preference_params
	  	params.require(:preference).permit()
	  end





end