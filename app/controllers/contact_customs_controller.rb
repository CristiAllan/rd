class ContactCustomsController < ApplicationController
  before_action :set_contact_custom, only: [:show, :edit, :update, :destroy]

  # GET /contact_customs
  # GET /contact_customs.json
  def index
    @contact_customs = ContactCustom.all
  end

  # GET /contact_customs/1
  # GET /contact_customs/1.json
  def show
  end

  # GET /contact_customs/new
  def new
    @contact_custom = ContactCustom.new
  end

  # GET /contact_customs/1/edit
  def edit
  end

  # POST /contact_customs
  # POST /contact_customs.json
  def create
    @contact_custom = ContactCustom.new(contact_custom_params)

    respond_to do |format|
      if @contact_custom.save
        format.html { redirect_to @contact_custom, notice: 'Contact custom was successfully created.' }
        format.json { render :show, status: :created, location: @contact_custom }
      else
        format.html { render :new }
        format.json { render json: @contact_custom.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contact_customs/1
  # PATCH/PUT /contact_customs/1.json
  def update
    respond_to do |format|
      if @contact_custom.update(contact_custom_params)
        format.html { redirect_to @contact_custom, notice: 'Contact custom was successfully updated.' }
        format.json { render :show, status: :ok, location: @contact_custom }
      else
        format.html { render :edit }
        format.json { render json: @contact_custom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contact_customs/1
  # DELETE /contact_customs/1.json
  def destroy
    @contact_custom.destroy
    respond_to do |format|
      format.html { redirect_to contact_customs_url, notice: 'Contact custom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact_custom
      @contact_custom = ContactCustom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_custom_params
      params.require(:contact_custom).permit(:value, :contact_id, :custom_id)
    end
end
