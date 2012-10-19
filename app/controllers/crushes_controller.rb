class CrushesController < ApplicationController
  # GET /crushes
  # GET /crushes.json
  def index
    @crushes = Crush.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @crushes }
    end
  end

	# GET /crushes/fetch/user_id
	# GET /crushes/fetch/user_id.json

  def fetch
    @crush = Crush.where(:user => params[:id])

    respond_to do |format|
      format.json { render json: @crush }
    end
  end

  # GET /crushes/1
  # GET /crushes/1.json
  def show
    @crush = Crush.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @crush }
    end
  end

  # GET /crushes/new
  # GET /crushes/new.json
  def new
    @crush = Crush.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @crush }
    end
  end

  # GET /crushes/1/edit
  def edit
    @crush = Crush.find(params[:id])
  end

  # POST /crushes
  # POST /crushes.json
  def create
    @crush = Crush.new(params[:crush])

    respond_to do |format|
      if @crush.save
        format.html { redirect_to @crush, notice: 'Crush was successfully created.' }
        format.json { render json: @crush, status: :created, location: @crush }
      else
        format.html { render action: "new" }
        format.json { render json: @crush.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /crushes/1
  # PUT /crushes/1.json
  def update
    @crush = Crush.find(params[:id])

    respond_to do |format|
      if @crush.update_attributes(params[:crush])
        format.html { redirect_to @crush, notice: 'Crush was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @crush.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /crushes/1
  # DELETE /crushes/1.json
  def destroy
    @crush = Crush.find(params[:id])
    @crush.destroy

    respond_to do |format|
      format.html { redirect_to crushes_url }
      format.json { head :no_content }
    end
  end
end
