class TasksController < ApplicationController

def index
  @tasks = Task.all
end

def show
  @task = Task.find(params[:id])
end

def new
  @task = Task.new
end

def edit
	@task = Task.find(params[:id])
end

def create
	@task = Task.new(task_params)
	respond_to do |format|
		if @task.save
			format.html {redirect_to @task, notice: 'Tarefa Criada'}
		else
			format.html {renter :new}
		end
	end
end

  # DELETE /tarefas/1
  # DELETE /tarefas/1.json
def destroy
  @task = Task.find(params[:id])
  @task.destroy
  respond_to do |format|
    format.html { redirect_to tasks_url, notice: 'Tarefa was successfully destroyed.' }
    format.json { head :no_content }
  end
end

# PATCH/PUT /tarefas/1
# PATCH/PUT /tarefas/1.json
def update
  @task = Task.find(params[:id])
  if @task.update(task_params)
    format.html { redirect_to @task, notice: 'Tarefa was successfully updated.' }
    format.json { render :show, status: :ok, location: @task }
  else
   	format.html { render :edit }
    format.json { render json: @task.errors, status: :unprocessable_entity }
  end
end


private	
def set_task
  @task = Task.find(params[:id])
end

def task_params
  params.require(:task).permit(:title, :description)
end
end