class PagesController < ApplicationController
    before_action :set_seller, only: [:show, :edit, :update, :destroy]

  # GET /sellers
  # GET /sellers.json
  def index
    @views = Seller.all
    @location = Location.all
    @cuisine = Cuisine.all
  end

  # GET /sellers/1
  # GET /sellers/1.json
  def show
    @views = ProductListing.where(seller_id: params[:id])
    @company = Seller.find(params[:id])
  end

  # GET /sellers/new
  def new

  end

  # GET /sellers/1/edit
  def edit

  end

  # POST /sellers
  # POST /sellers.json
  def create

  end

  # PATCH/PUT /sellers/1
  # PATCH/PUT /sellers/1.json
  def update

  end

  # DELETE /sellers/1
  # DELETE /sellers/1.json
  def destroy

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seller
      @seller = Seller.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seller_params
      params.require(:seller).permit(:company_name, :description, :location_id, :address, :website_url, :google_reviews_url, :cuisine_id, :user_id,:picture)
    end
end