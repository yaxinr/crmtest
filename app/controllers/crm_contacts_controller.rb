class CrmContactsController < ApplicationController
  # GET /crm_contacts
  # GET /crm_contacts.json
  def index
    @crm_contacts = CrmContact.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @crm_contacts }
    end
  end

  # GET /crm_contacts/1
  # GET /crm_contacts/1.json
  def show
    @crm_contact = CrmContact.find(params[:id])
    @EntityObject=@crm_contact
    @entity_tags=@EntityObject.entity_tags
    @entity_tag=EntityTag.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @crm_contact }
    end
  end

  # GET /crm_contacts/new
  # GET /crm_contacts/new.json
  def new
    @crm_contact = CrmContact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @crm_contact }
    end
  end

  # GET /crm_contacts/1/edit
  def edit
    @crm_contact = CrmContact.find(params[:id])
  end

  # POST /crm_contacts
  # POST /crm_contacts.json
  def create
    @crm_contact = CrmContact.new(params[:crm_contact])

    respond_to do |format|
      if @crm_contact.save
        format.html { redirect_to @crm_contact, notice: 'Crm contact was successfully created.' }
        format.json { render json: @crm_contact, status: :created, location: @crm_contact }
      else
        format.html { render action: "new" }
        format.json { render json: @crm_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /crm_contacts/1
  # PUT /crm_contacts/1.json
  def update
    @crm_contact = CrmContact.find(params[:id])

    respond_to do |format|
      if @crm_contact.update_attributes(params[:crm_contact])
        format.html { redirect_to @crm_contact, notice: 'Crm contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @crm_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crm_contacts/1
  # DELETE /crm_contacts/1.json
  def destroy
    @crm_contact = CrmContact.find(params[:id])
    @crm_contact.destroy

    respond_to do |format|
      format.html { redirect_to crm_contacts_url }
      format.json { head :no_content }
    end
  end
end
