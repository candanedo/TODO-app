class ActivitiesController < ApplicationController
  before_action :authenticate_user!
  #before_action :validate_user!, only: [:update, :destroy]
  def index
  	@activities = Activitie.where(user_id: current_user.id)
    respond_to do |format|
      format.html
      format.csv { send_data @activities.to_csv }
      #format.xls { send_data @activities.to_csv(col_sep: "\t") }
      #format.pdf { send_data @activities }
      format.pdf {render template: 'activities/activities_report', pdf: 'activities_report'}
    end
  end

  def show
  	@activitie = Activitie.find(params[:id])
  end

  def new
  	@activitie = Activitie.new
  end

  def edit
  	@activitie = Activitie.find(params[:id])
  end

  def create
	  @activitie = Activitie.new(activitie_params.merge(:user_id => current_user.id))
	
    if @activitie.save
	    redirect_to @activitie
	  else
	    render 'new'
	  end
  end

  def update
  	@activitie = Activitie.find(params[:id])
  	if @activitie.update(activitie_params)
  	  redirect_to @activitie
  	else
  	  render 'edit'
  	end
  end

  def destroy
  	@activitie = Activitie.find(params[:id])
  	@activitie.destroy
  	redirect_to activities_path

  end


  private
  def activitie_params
	  params.require(:activitie).permit(:name, :description, :initial_date, :final_date, :user_id)
  end
end
