class EntityContactsController < ApplicationController
  # GET /entity_contacts
  # GET /entity_contacts.json
  def index
    @entity_contact = EntityTag.new
    @EntityObject = EntityObject(params)

    # case
    # when @EntityObject
      @entity_contacts = @EntityObject.entity_contacts
    # else
    # @entity_contacts = EntityContact.all
# 
    # respond_to do |format|
      # # format.html # index.html.erb
      # format.js # index.html.erb
      # format.json { render json: @entity_contacts }
    # end
    # end
  end

  # GET /entity_contacts/1
  # GET /entity_contacts/1.json
  def show
    @entity_contact = EntityContact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entity_contact }
    end
  end

  # GET /entity_contacts/new
  # GET /entity_contacts/new.json
  def new
    @entity_contact = EntityContact.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @entity_contact }
    end
  end

  # GET /entity_contacts/1/edit
  def edit
    @entity_contact = EntityContact.find(params[:id])
  end

  # POST /entity_contacts
  # POST /entity_contacts.json
  def create
    @EntityObject = EntityObject(params)
    if @EntityObject
      @entity_contact = @EntityObject.entity_contacts.create(params[:entity_contact])
      @entity_contacts = @EntityObject.entity_contacts
    else
    @entity_contact = EntityContact.new(params[:entity_contact])

    respond_to do |format|
      if @entity_contact.save
        format.html { redirect_to @entity_contact, notice: 'Entity contact was successfully created.' }
        format.json { render json: @entity_contact, status: :created, location: @entity_contact }
      else
        format.html { render action: "new" }
        format.json { render json: @entity_contact.errors, status: :unprocessable_entity }
      end
    end
    end
  end

  # PUT /entity_contacts/1
  # PUT /entity_contacts/1.json
  def update
    @entity_contact = EntityContact.find(params[:id])

    respond_to do |format|
      if @entity_contact.update_attributes(params[:entity_contact])
        format.html { redirect_to @entity_contact, notice: 'Entity contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @entity_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entity_contacts/1
  # DELETE /entity_contacts/1.json
  def destroy
    @entity_contact = EntityContact.find(params[:id])
    @EntityObject = EntityObjectByChild(@entity_contact)
    @entity_contact.destroy
    @entity_contacts = @EntityObject.entity_contacts
    @entity_contact = EntityContact.new
  end
end
