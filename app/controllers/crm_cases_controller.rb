class CrmCasesController < ApplicationController
  # GET /crm_cases
  # GET /crm_cases.json
  def index
    @crm_cases = CrmCase.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @crm_cases }
    end
  end

  # GET /crm_cases/1
  # GET /crm_cases/1.json
  def show
    @crm_case = CrmCase.find(params[:id])
    @EntityObject=@crm_case
    @entity_tags=@EntityObject.entity_tags
    @entity_tag=EntityTag.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @crm_case }
    end
  end

  # GET /crm_cases/new
  # GET /crm_cases/new.json
  def new
    @crm_case = CrmCase.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @crm_case }
    end
  end

  # GET /crm_cases/1/edit
  def edit
    @crm_case = CrmCase.find(params[:id])
  end

  # POST /crm_cases
  # POST /crm_cases.json
  def create
    @crm_case = CrmCase.new(params[:crm_case])

    respond_to do |format|
      if @crm_case.save
        format.html { redirect_to @crm_case, notice: 'Crm case was successfully created.' }
        format.json { render json: @crm_case, status: :created, location: @crm_case }
      else
        format.html { render action: "new" }
        format.json { render json: @crm_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /crm_cases/1
  # PUT /crm_cases/1.json
  def update
    @crm_case = CrmCase.find(params[:id])

    respond_to do |format|
      if @crm_case.update_attributes(params[:crm_case])
        format.html { redirect_to @crm_case, notice: 'Crm case was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @crm_case.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crm_cases/1
  # DELETE /crm_cases/1.json
  def destroy
    @crm_case = CrmCase.find(params[:id])
    @crm_case.destroy

    respond_to do |format|
      format.html { redirect_to crm_cases_url }
      format.json { head :no_content }
    end
  end
end
