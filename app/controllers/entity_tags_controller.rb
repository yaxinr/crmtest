class EntityTagsController < ApplicationController
  # GET /entity_tags
  # GET /entity_tags.json
  def index
    @entity_tag = EntityTag.new
    @EntityObject = EntityObject(params)

    case
    when @EntityObject
      @entity_tags = @EntityObject.entity_tags
    else
    @entity_tags = EntityTag.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entity_tags }
    end
    end
  end

  # GET /entity_tags/1
  # GET /entity_tags/1.json
  def show
    @entity_tag = EntityTag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entity_tag }
    end
  end

  # GET /entity_tags/new
  # GET /entity_tags/new.json
  def new
    @entity_tag = EntityTag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @entity_tag }
    end
  end

  # GET /entity_tags/1/edit
  def edit
    @entity_tag = EntityTag.find(params[:id])
  end

  # POST /entity_tags
  # POST /entity_tags.json
  def create
    @EntityObject = EntityObject(params)
    if @EntityObject
      @entity_tag = @EntityObject.entity_tags.create(params[:entity_tag])
      @entity_tags = @EntityObject.entity_tags.reload
    else
    @entity_tag = EntityTag.new(params[:entity_tag])

    respond_to do |format|
      if @entity_tag.save
        format.html { redirect_to @entity_tag, notice: 'Entity tag was successfully created.' }
        format.json { render json: @entity_tag, status: :created, location: @entity_tag }
      else
        format.html { render action: "new" }
        format.json { render json: @entity_tag.errors, status: :unprocessable_entity }
      end
    end
    end
  end

  # PUT /entity_tags/1
  # PUT /entity_tags/1.json
  def update
    @entity_tag = EntityTag.find(params[:id])

    respond_to do |format|
      if @entity_tag.update_attributes(params[:entity_tag])
        format.html { redirect_to @entity_tag, notice: 'Entity tag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @entity_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entity_tags/1
  # DELETE /entity_tags/1.json
  def destroy
    @entity_tag = EntityTag.find(params[:id])
    @EntityObject = EntityObjectByType(@entity_tag.entity_type,@entity_tag.entity_id)
    @entity_tag.destroy
    @entity_tags = @EntityObject.entity_tags
    @entity_tag = EntityTag.new
    # if @EntityObject
      # @entity_tags = @EntityObject.entity_tags
    # end
    # respond_to do |format|
      # format.html { render action: "index" }
    # end

    # respond_to do |format|
      # format.html { redirect_to entity_tags_url }
      # format.json { head :no_content }
    # end
  end
end
