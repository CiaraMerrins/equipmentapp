class EquipmentTypesController < ApplicationController
  # GET /equipment_types
  # GET /equipment_types.json
  def index
    @equipment_types = EquipmentType.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @equipment_types }
    end
  end

  # GET /equipment_types/1
  # GET /equipment_types/1.json
  def show
    @equipment_type = EquipmentType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @equipment_type }
    end
  end

  # GET /equipment_types/new
  # GET /equipment_types/new.json
  def new
    @equipment_type = EquipmentType.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @equipment_type }
    end
  end

  # GET /equipment_types/1/edit
  def edit
    @equipment_type = EquipmentType.find(params[:id])
  end

  # POST /equipment_types
  # POST /equipment_types.json
  def create
    @equipment_type = EquipmentType.new(params[:equipment_type])

    respond_to do |format|
      if @equipment_type.save
        format.html { redirect_to @equipment_type, notice: 'Equipment type was successfully created.' }
        format.json { render json: @equipment_type, status: :created, location: @equipment_type }
      else
        format.html { render action: "new" }
        format.json { render json: @equipment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /equipment_types/1
  # PUT /equipment_types/1.json
  def update
    @equipment_type = EquipmentType.find(params[:id])

    respond_to do |format|
      if @equipment_type.update_attributes(params[:equipment_type])
        format.html { redirect_to @equipment_type, notice: 'Equipment type was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @equipment_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment_types/1
  # DELETE /equipment_types/1.json
  def destroy
    @equipment_type = EquipmentType.find(params[:id])
    @equipment_type.destroy

    respond_to do |format|
      format.html { redirect_to equipment_types_url }
      format.json { head :no_content }
    end
  end
end
