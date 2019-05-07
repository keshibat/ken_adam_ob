class PagesController < ApplicationController
    before_action :set_seller, only: [:show, :edit, :update, :destroy]

  # GET /sellers
  # GET /sellers.json
  def index
    @city = Location.all
    @cuisine = Cuisine.all
    if params[:search] != nil
      if params[:city] == "%"
        @query_city = "%"
      else
        @query_city = "%#{params[:city]}%"
      end

      if params[:cuisine] == "%"
        @query_cuisine = "%"
      else
        @query_cuisine = "%#{params[:cuisine]}%"
      end


      # @query_city = Location.where("city ILIKE ?", "%#{params[:city]}%").first
      # @query_cuisine = Cuisine.where("name ILIKE ?", "%#{params[:cuisine]}%").first
      # @views = Seller.where('company_name ILIKE ? AND ', "%#{params[:search]}%", location_id: @query_city.id, cuisine_id: @query_cuisine.id)
      # @views = Seller.where('company_name ILIKE ? AND location_id = ? AND cuisine_id = ?', "%#{params[:search]}%", @query_city.id, @query_cuisine.id)
      # @views = Seller.where('company_name ILIKE ? AND location_id ILIKE ? AND cuisine_id ILIKE ?', "%#{params[:search]}%", "%", "%")
      
      # @views = Seller.where('company_name ILIKE ?', "%#{params[:search]}%")

      # User.where("id = ? AND nome LIKE ?", id, "%#{nome}%")
      # "name LIKE ? OR postal_code LIKE ?", "%#{search}%", "%#{search}%"
      # "name LIKE CONCAT('%',?,'%') OR postal_code LIKE CONCAT('%',?,'%')", search, search)
      # Seller.where('company_name ILIKE ?', "%#{params[:search]}%")  ####{'company_name ILIKE ?', "%#{params[:search]}%"}, 
      # @views = Seller.joins(:location, :cuisine).where(cuisines: {'name ILIKE ?' => "%#{params[:search]}%"})
      # @views = Seller.joins(:location, :cuisine).where(sellers: {'company_name ILIKE ?': "%#{params[:search]}%"}, locations: {"city ILIKE ?": "%#{params[:city]}%"}, cuisines: {"name ILIKE ?": "%#{params[:cuisine]}%"})
      # @views = Seller.joins(:location, :cuisine).where('company_name ILIKE ? AND location_id ILIKE ? AND cuisine_id ILIKE ?', "%#{params[:search]}%", "%#{params[:city]}%", "%#{params[:cuisine]}%")
      
      @views = Seller.joins(:location, :cuisine).where("company_name ILIKE ?", "%#{params[:search]}%").where("locations.city ILIKE ?", @query_city).where("cuisines.name ILIKE ?", @query_cuisine)
      # @views = Seller.joins(:location, :cuisine).where("company_name ILIKE ?", "%#{params[:search]}%").(Location.where(locations: {"city ILIKE ?": @query_city})).(Cuisine.where(cuisines: {"name ILIKE ?": @query_cuisine}))
      # @views = Seller.includes(:location, :cuisine).where("company_name ILIKE ?", "%#{params[:search]}%").or(Location.where("city ILIKE ?", @query_city)).or(Cuisine.where("name ILIKE ?", @query_cuisine))


            # Seller.joins(:location, :cuisine).where("company_name ILIKE ?", "El Jannah").orwhere(locations: {city: "Sydney CBD"}, cuisines: {name: "Turkish"})
      # @views = Seller.joins(:location, :cuisine).where(location: {"city ILIKE ?": "%#{params[:city]}%"})
      # User.joins(:user_info, :forms).where(user_infos: {state: "open"}, forms: {state: "AZ"})
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