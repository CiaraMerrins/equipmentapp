class EquipmenttypesController < ApplicationController
  # GET /equipmenttypes
  # GET /equipmenttypes.json
  def index
    @equipmenttypes = Equipmenttype.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equipmenttypes }
    end
  end

  # GET /equipmenttypes/1
  # GET /equipmenttypes/1.json
  def show
    @equipmenttype = Equipmenttype.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equipmenttype }
    end
  end

  # GET /equipmenttypes/new
  # GET /equipmenttypes/new.json
  def new
    @equipmenttype = Equipmenttype.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equipmenttype }
    end
  end

  # GET /equipmenttypes/1/edit
  def edit
    @equipmenttype = Equipmenttype.find(params[:id])
  end

  # POST /equipmenttypes
  # POST /equipmenttypes.json
  def create
    @equipmenttype = Equipmenttype.new(params[:equipmenttype])

    respond_to do |format|
      if @equipmenttype.save
        format.html { redirect_to @equipmenttype, notice: 'Equipmenttype was successfully created.' }
        format.json { render json: @equipmenttype, status: :created, location: @equipmenttype }
      else
        format.html { render action: "new" }
        format.json { render json: @equipmenttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /equipmenttypes/1
  # PUT /equipmenttypes/1.json
  def update
    @equipmenttype = Equipmenttype.find(params[:id])

    respond_to do |format|
      if @equipmenttype.update_attributes(params[:equipmenttype])
        format.html { redirect_to @equipmenttype, notice: 'Equipmenttype was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @equipmenttype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipmenttypes/1
  # DELETE /equipmenttypes/1.json
  def destroy
    @equipmenttype = Equipmenttype.find(params[:id])
    @equipmenttype.destroy

    respond_to do |format|
      format.html { redirect_to equipmenttypes_url }
      format.json { head :no_content }
    end
  end
end
