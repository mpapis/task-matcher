class TaskDetailsController < ApplicationController
  # GET /task_details
  # GET /task_details.json
  def index
    @task_details = TaskDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @task_details }
    end
  end

  # GET /task_details/1
  # GET /task_details/1.json
  def show
    @task_detail = TaskDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task_detail }
    end
  end

  # GET /task_details/new
  # GET /task_details/new.json
  def new
    @task_detail = TaskDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @task_detail }
    end
  end

  # GET /task_details/1/edit
  def edit
    @task_detail = TaskDetail.find(params[:id])
  end

  # POST /task_details
  # POST /task_details.json
  def create
    @task_detail = TaskDetail.new(params[:task_detail])

    respond_to do |format|
      if @task_detail.save
        format.html { redirect_to @task_detail, notice: 'Task detail was successfully created.' }
        format.json { render json: @task_detail, status: :created, location: @task_detail }
      else
        format.html { render action: "new" }
        format.json { render json: @task_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /task_details/1
  # PUT /task_details/1.json
  def update
    @task_detail = TaskDetail.find(params[:id])

    respond_to do |format|
      if @task_detail.update_attributes(params[:task_detail])
        format.html { redirect_to @task_detail, notice: 'Task detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /task_details/1
  # DELETE /task_details/1.json
  def destroy
    @task_detail = TaskDetail.find(params[:id])
    @task_detail.destroy

    respond_to do |format|
      format.html { redirect_to task_details_url }
      format.json { head :no_content }
    end
  end
end
