class FieldValuesController < ApplicationController
  # GET /field_values
  # GET /field_values.json
  def index
    @field_values = FieldValue.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @field_values }
    end
  end

  # GET /field_values/1
  # GET /field_values/1.json
  def show
    @field_value = FieldValue.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @field_value }
    end
  end

  # GET /field_values/new
  # GET /field_values/new.json
  def new
    @field_value = FieldValue.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @field_value }
    end
  end

  # GET /field_values/1/edit
  def edit
    @field_value = FieldValue.find(params[:id])
  end

  # POST /field_values
  # POST /field_values.json
  def create
    @field_value = FieldValue.new(params[:field_value])

    respond_to do |format|
      if @field_value.save
        format.html { redirect_to @field_value, notice: 'Field value was successfully created.' }
        format.json { render json: @field_value, status: :created, location: @field_value }
      else
        format.html { render action: "new" }
        format.json { render json: @field_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /field_values/1
  # PUT /field_values/1.json
  def update
    @field_value = FieldValue.find(params[:id])

    respond_to do |format|
      if @field_value.update_attributes(params[:field_value])
        format.html { redirect_to @field_value, notice: 'Field value was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @field_value.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /field_values/1
  # DELETE /field_values/1.json
  def destroy
    @field_value = FieldValue.find(params[:id])
    @field_value.destroy

    respond_to do |format|
      format.html { redirect_to field_values_url }
      format.json { head :no_content }
    end
  end
end
