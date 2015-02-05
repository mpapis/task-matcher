class TaskDetailsController < ApplicationController

  # GET /tasks/:task_id/task_details/:id/edit
  def edit
    @task = Task.find(params[:task_id])
    @task_detail = @task.task_details.find(params[:id])
  end

  # POST /tasks/:task_id/task_details
  # POST /tasks/:task_id/task_details.json
  def create
    @task = Task.find(params[:task_id])
    @task_detail = @task.task_details.new(params[:task_detail])

    respond_to do |format|
      if @task_detail.save
        format.html { redirect_to @task, notice: 'Task detail was successfully created.' }
        format.json { render json: @task, status: :created, location: @task }
      else
        format.html { render @task }
        format.json { render json: @task_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tasks/:task_id/task_details/:id
  # PUT /tasks/:task_id/task_details/:id.json
  def update
    @task = Task.find(params[:task_id])
    @task_detail = @task.task_details.find(params[:id])

    respond_to do |format|
      if @task_detail.update_attributes(params[:task_detail])
        format.html { redirect_to @task, notice: 'Task detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render @task }
        format.json { render json: @task_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tasks/:task_id/task_details/:id
  # DELETE /tasks/:task_id/task_details/:id.json
  def destroy
    @task = Task.find(params[:task_id])
    @task_detail = @task.task_details.find(params[:id])
    @task_detail.destroy

    respond_to do |format|
      format.html { redirect_to @task }
      format.json { head :no_content }
    end
  end
end
