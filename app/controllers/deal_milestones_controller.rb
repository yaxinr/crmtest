class DealMilestonesController < ApplicationController
  # GET /deal_milestones
  # GET /deal_milestones.json
  def index
    @deal_milestones = DealMilestone.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @deal_milestones }
    end
  end

  # GET /deal_milestones/1
  # GET /deal_milestones/1.json
  def show
    @deal_milestone = DealMilestone.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @deal_milestone }
    end
  end

  # GET /deal_milestones/new
  # GET /deal_milestones/new.json
  def new
    @deal_milestone = DealMilestone.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @deal_milestone }
    end
  end

  # GET /deal_milestones/1/edit
  def edit
    @deal_milestone = DealMilestone.find(params[:id])
  end

  # POST /deal_milestones
  # POST /deal_milestones.json
  def create
    @deal_milestone = DealMilestone.new(params[:deal_milestone])

    respond_to do |format|
      if @deal_milestone.save
        format.html { redirect_to @deal_milestone, notice: 'Deal milestone was successfully created.' }
        format.json { render json: @deal_milestone, status: :created, location: @deal_milestone }
      else
        format.html { render action: "new" }
        format.json { render json: @deal_milestone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /deal_milestones/1
  # PUT /deal_milestones/1.json
  def update
    @deal_milestone = DealMilestone.find(params[:id])

    respond_to do |format|
      if @deal_milestone.update_attributes(params[:deal_milestone])
        format.html { redirect_to @deal_milestone, notice: 'Deal milestone was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @deal_milestone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deal_milestones/1
  # DELETE /deal_milestones/1.json
  def destroy
    @deal_milestone = DealMilestone.find(params[:id])
    @deal_milestone.destroy

    respond_to do |format|
      format.html { redirect_to deal_milestones_url }
      format.json { head :no_content }
    end
  end
end
