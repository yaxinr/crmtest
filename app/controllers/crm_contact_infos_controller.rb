class CrmContactInfosController < ApplicationController
  # GET /crm_contact_infos
  # GET /crm_contact_infos.json
  def index
    @crm_contact_infos = @crm_contact.crm_contact_infos

    # respond_to do |format|
      # format.html # index.html.erb
      # format.json { render json: @crm_contact_infos }
    # end
  end

  # GET /crm_contact_infos/1
  # GET /crm_contact_infos/1.json
  def show
    @crm_contact_info = CrmContactInfo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @crm_contact_info }
    end
  end

  # GET /crm_contact_infos/new
  # GET /crm_contact_infos/new.json
  def new
    @crm_contact_info = CrmContactInfo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @crm_contact_info }
    end
  end

  # GET /crm_contact_infos/1/edit
  def edit
    @crm_contact_info = CrmContactInfo.find(params[:id])
  end

  # POST /crm_contact_infos
  # POST /crm_contact_infos.json
  def create
    @crm_contact = CrmContact.find(params[:crm_contact_id])
    @crm_contact_info = @crm_contact.crm_contact_infos.create(params[:crm_contact_info])
    # redirect_to @crm_contact
        # @crm_contact_info = CrmContactInfo.new(params[:crm_contact_info])

    # respond_to do |format|
      # if @crm_contact_info.save
        # format.html { redirect_to @crm_contact_info, notice: 'Crm contact info was successfully created.' }
        # format.json { render json: @crm_contact_info, status: :created, location: @crm_contact_info }
      # else
        # format.html { render action: "new" }
        # format.json { render json: @crm_contact_info.errors, status: :unprocessable_entity }
      # end
    # end
  end

  # PUT /crm_contact_infos/1
  # PUT /crm_contact_infos/1.json
  def update
    @crm_contact_info = CrmContactInfo.find(params[:id])

    respond_to do |format|
      if @crm_contact_info.update_attributes(params[:crm_contact_info])
        format.html { redirect_to @crm_contact_info, notice: 'Crm contact info was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @crm_contact_info.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crm_contact_infos/1
  # DELETE /crm_contact_infos/1.json
  def destroy
    @crm_contact_info = CrmContactInfo.find(params[:id])
    @crm_contact_info.destroy
    @crm_contact=@crm_contact_info.crm_contact

    # respond_to do |format|
      # format.html { redirect_to crm_contact_infos_url }
      # format.json { head :no_content }
    # end
  end
end
