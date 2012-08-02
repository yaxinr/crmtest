class TasksController < ApplicationController
  # GET /tasks
  # GET /tasks.json
  def index
    @EntityObject = EntityObject(params)
    if @EntityObject
       # @task=@EntityObject.tasks.build
    else
     @tasks = Task.all
      @task=Task.new

     respond_to do |format|
       format.html # index.html.erb
       format.js # index.html.erb
       format.json { render json: @tasks }
     end
    end
  end

  # GET /tasks/1
  # GET /tasks/1.json
  def show
    @task = Task.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @task }
    end
  end

  # GET /tasks/new
  # GET /tasks/new.json
  def new
    @task = Task.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @task }
    end
  end

  # GET /tasks/1/edit
  def edit
    @task = Task.find(params[:id])
    @EntityObject = EntityObject(params)
  end

  # POST /tasks
  # POST /tasks.json
  def create
    @EntityObject = EntityObject(params)
    if @EntityObject
      @task = @EntityObject.tasks.create(params[:task])
    else
      @task = Task.new(params[:task])
      if @task.crm_contact_id != nil
      @task.entity_type=1
      @task.entity_id=@task.crm_contact_id
      end
      @task.save

    # respond_to do |format|
      # if @task.save
        # format.html { redirect_to @task, notice: 'Task was successfully created.' }
        # format.json { render json: @task, status: :created, location: @task }
      # else
        # format.html { render action: "new" }
        # format.json { render json: @task.errors, status: :unprocessable_entity }
      # end
    # end
    end
    @task = Task.new
  end

  # PUT /tasks/1
  # PUT /tasks/1.json
  def update
    @task = Task.find(params[:id])
    
      @EntityObject = EntityObject(params) 
      # if params[:controller] != 'tasks'
      
    # if @EntityObject
      # @task.update_attributes(params[:task])
    # else
    respond_to do |format|
      if @task.update_attributes(params[:task])
      if @task.crm_contact_id != nil
      @task.entity_type=1
      @task.entity_id=@task.crm_contact_id
      end
      @task.save
        # format.html { redirect_to @task, notice: 'Task was successfully updated.' }
        @task = Task.new
        format.html { render action: "index", notice: 'Task was successfully updated.' }
        format.js
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
        # @tasks=case when @EntityObject then @EntityObject.tasks else Task.all
    end
    # end

  end

  # DELETE /tasks/1
  # DELETE /tasks/1.json
  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    @EntityObject = EntityObject(params)
    if @EntityObject
    else
        @tasks=Task.all

    # respond_to do |format|
      # format.html { redirect_to tasks_url }
      # format.json { head :no_content }
    # end
    end
    @task = Task.new
  end
end
