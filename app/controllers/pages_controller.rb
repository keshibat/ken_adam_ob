class PagesController < ApplicationController
    before_action :set_seller, only: [:show, :edit, :update, :destroy]

  # GET /sellers
  # GET /sellers.json
  def index
    @city = Location.all
    @cuisine = Cuisine.all
    if params[:search] != nil
      # if name search is blank
      if params[:search].blank?
        @name_display = "Any Location"
      else
        @name_display = params[:search]
      end
      # if city search is blank
      if params[:city] == "%"
        @query_city = "%"
        @city_display = "Any Location"
      else
        @query_city = "%#{params[:city]}%"
        @city_display = params[:city]
      end
      # if cuisine search is blank
      if params[:cuisine] == "%"
        @query_cuisine = "%"
        @cuisine_display = "Any Location"
      else
        @query_cuisine = "%#{params[:cuisine]}%"
        @cuisine_display = params[:cuisine]
      end
      # query database
      @views = Seller.joins(:location, :cuisine).where("company_name ILIKE ?", "%#{params[:search]}%").where("locations.city ILIKE ?", @query_city).where("cuisines.name ILIKE ?", @query_cuisine)
    else
      @views = Seller.all
    end
    # hash city
    @city_option = {"Any location": "%"}
    @city.each do |val|
      @city_option[val[:city]] = val[:city]
    end
    # hash cuisine
    @cuisine_option = {"Any cuisine": "%"}
    @cuisine.each do |val|
      @cuisine_option[val[:name]] = val[:name]
    end
    if current_user != nil
      # cart quantity check
      @quantity = Cart.where(user_id: current_user.id).count
      # seller check needed - no adding to cart for seller
      @sellerCheck = Seller.where(user_id: current_user.id).first
    end
  end

  # GET /sellers/1
  # GET /sellers/1.json
  def show
    @views = ProductListing.where(seller_id: params[:id])
    @formInfo = ProductListing.where(seller_id: params[:id]).first
    @company = Seller.find(params[:id])
    if current_user != nil
      # cart quantity check
      @quantity = Cart.where(user_id: current_user.id).count
      # seller check needed - no adding to cart for seller
      @sellerCheck = Seller.where(user_id: current_user.id).first
    end
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