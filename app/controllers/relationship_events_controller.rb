class RelationshipEventsController < ApplicationController
  # GET /relationship_events
  # GET /relationship_events.json
  def index
    # @crm_contact = CrmContact.find(params[:crm_contact_id])
    @EntityObject = EntityObject(params)
    if @EntityObject
    else
    @relationship_events = RelationshipEvent.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @relationship_events }
    end
    end
  end

  def indexOfContact
    @crm_contact = CrmContact.find(params[:crm_contact_id])
    # @relationship_events = RelationshipEvent.all

    # respond_to do |format|
      # format.html # index.html.erb
      # format.json { render json: @relationship_events }
    # end
  end

  # GET /relationship_events/1
  # GET /relationship_events/1.json
  def show
    @relationship_event = RelationshipEvent.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @relationship_event }
    end
  end

  # GET /relationship_events/new
  # GET /relationship_events/new.json
  def new
    @relationship_event = RelationshipEvent.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @relationship_event }
    end
  end

  # GET /relationship_events/1/edit
  def edit
    @relationship_event = RelationshipEvent.find(params[:id])
  end

  # POST /relationship_events
  # POST /relationship_events.json
  def create
    @EntityObject = EntityObject(params)
    if @EntityObject
      @crm_contact_info = @EntityObject.relationship_events.create(params[:relationship_event])
    else

    # redirect_to @crm_contact
    # @relationship_event = RelationshipEvent.new(params[:relationship_event])
# 
    # respond_to do |format|
      # if @relationship_event.save
        # format.html { redirect_to @relationship_event, notice: 'Relationship event was successfully created.' }
        # format.json { render json: @relationship_event, status: :created, location: @relationship_event }
      # else
        # format.html { render action: "new" }
        # format.json { render json: @relationship_event.errors, status: :unprocessable_entity }
      # end
    # end
    end
  end

  # PUT /relationship_events/1
  # PUT /relationship_events/1.json
  def update
    @relationship_event = RelationshipEvent.find(params[:id])

    respond_to do |format|
      if @relationship_event.update_attributes(params[:relationship_event])
        format.html { redirect_to @relationship_event, notice: 'Relationship event was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @relationship_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /relationship_events/1
  # DELETE /relationship_events/1.json
  def destroy
    @relationship_event = RelationshipEvent.find(params[:id])
    @relationship_event.destroy

    respond_to do |format|
      format.html { redirect_to relationship_events_url }
      format.json { head :no_content }
    end
  end
end
