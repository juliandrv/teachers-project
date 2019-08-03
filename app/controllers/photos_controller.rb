class photoController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  # GET /photo
  # GET /photo.json
  def index
    @photos = Photo.all
  end

  # GET /photo/1
  # GET /photo/1.json
  def show
  end

  # GET /photo/new
  def new
    @photo = Photo.new
  end

  # GET /photo/1/edit
  def edit
  end

  # POST /photo
  # POST /photo.json
  def create
    @photo = Photo.new(photo_params)

    respond_to do |format|
      if @photo.save
        format.html { redirect_to @photo, notice: 'photo was successfully created.' }
        format.json { render :show, status: :created, location: @photo }
      else
        format.html { render :new }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /photo/1
  # PATCH/PUT /photo/1.json
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html { redirect_to @photo, notice: 'photo was successfully updated.' }
        format.json { render :show, status: :ok, location: @photo }
      else
        format.html { render :edit }
        format.json { render json: @photo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /photo/1
  # DELETE /photo/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to photo_url, notice: 'photo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_photo
      @photo = photo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def photo_params
      params.require(:photo).permit(:name)
    end
end
