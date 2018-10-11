class TasksController < ApplicationController
  before_action :authenticate_user!
  def index 
    @activitie = Activitie.find(params[:activity_id])
    @tasks = @activitie.tasks.all
    respond_to do |format|
      format.html
      format.csv { send_data @tasks.to_csv }
      #format.xls { send_data @activities.to_csv(col_sep: "\t") }
      #format.pdf { send_data @activities }
      format.pdf {render template: 'activities/tasks_report', pdf: 'tasks_report'}
    end
  end

  def show
  	@task = Task.find(params[:id])
  end

  def edit
    @activitie = Activitie.find(params[:activity_id])
    @task = Task.find(params[:id])
  end

  def create
    @activitie = Activitie.find(params[:activity_id])
    @task = @activitie.tasks.create(task_params)
    redirect_to activity_path(@activitie)
  end
  
  def update
    @activitie = Activitie.find(params[:activity_id])
    @task = @activitie.tasks.find(params[:id])
    if @task.update(task_params)
      redirect_to activity_tasks_path
    else
      render 'edit'
    end
  end

  def destroy
    @activitie = Activitie.find(params[:activity_id])
    @task = @activitie.tasks.find(params[:id])
    @task.destroy
    redirect_to activity_path(@activitie)
  end

  private
    def task_params
      params.require(:task).permit(:name, :description, :initial_date, :final_date)
    end
end
