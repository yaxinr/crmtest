class FieldDescriptionsController < ApplicationController
  # GET /field_descriptions
  # GET /field_descriptions.json
  def index
    @field_descriptions = FieldDescription.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @field_descriptions }
    end
  end

  # GET /field_descriptions/1
  # GET /field_descriptions/1.json
  def show
    @field_description = FieldDescription.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @field_description }
    end
  end

  # GET /field_descriptions/new
  # GET /field_descriptions/new.json
  def new
    @field_description = FieldDescription.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @field_description }
    end
  end

  # GET /field_descriptions/1/edit
  def edit
    @field_description = FieldDescription.find(params[:id])
  end

  # POST /field_descriptions
  # POST /field_descriptions.json
  def create
    @field_description = FieldDescription.new(params[:field_description])

    respond_to do |format|
      if @field_description.save
        format.html { redirect_to @field_description, notice: 'Field description was successfully created.' }
        format.json { render json: @field_description, status: :created, location: @field_description }
      else
        format.html { render action: "new" }
        format.json { render json: @field_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /field_descriptions/1
  # PUT /field_descriptions/1.json
  def update
    @field_description = FieldDescription.find(params[:id])

    respond_to do |format|
      if @field_description.update_attributes(params[:field_description])
        format.html { redirect_to @field_description, notice: 'Field description was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @field_description.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /field_descriptions/1
  # DELETE /field_descriptions/1.json
  def destroy
    @field_description = FieldDescription.find(params[:id])
    @field_description.destroy

    respond_to do |format|
      format.html { redirect_to field_descriptions_url }
      format.json { head :no_content }
    end
  end
end
