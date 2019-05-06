class CartsController < ApplicationController
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  # GET /carts
  # GET /carts.json
  def index
    # if not signed in
    if current_user == nil
      redirect_to user_session_path
    else
      unless params[:id].nil?
        # get product info
        @purchased = ProductListing.find(params[:id])
        # get restaurant info
        @restaurant = Seller.where(id: @purchased.seller_id).first
        ref = 5.times.map{rand(10)}.join
        # qrcode check it
        @qr = RQRCode::QRCode.new("#{@restaurant.website_url}?ref:#{ref}").to_img.resize(200, 200).to_data_url
        # check if product exits in model where currentuser
        # Seller cannot add the same product name twice anyways
        @checkIfExists = Cart.where(product_name: @purchased.product_name, user_id: current_user.id ).first
        if @checkIfExists == nil
          # insert into cart
            @addToCart = Cart.create(company_name: @restaurant.company_name, product_name: @purchased.product_name, description: @purchased.description, was_price: @purchased.was_price, price: @purchased.price, reference_number: ref, expiry_date: @purchased.expiry_date, qrcode: @qr.to_str, user_id: current_user.id)
        end
      end
      # insert into cartcart_params

      # @addToCart = Cart.create(company_name: @restaurant.company_name, product_name: @purchased.product_name, description: @purchased.description, was_price: @purchased.was_price, price: @purchased.price, reference_number: ref, expiry_date: @purchased.expiry_date, qrcode: @qr.to_str, user_id: current_user.id)
      # @addToCart = Cart.create(addToCart_params)

      # @addToCart.picture.attach(@purchased.picture)

  
      @carts = Cart.where(user_id: current_user.id)
      # cart quantity check
      @quantity = Cart.where(user_id: current_user.id).count
      # seller check needed - no adding to cart for seller
      @sellerCheck = Seller.where(user_id: current_user.id).first
      # get sum for stripe
      userCart = Cart.where(user_id: current_user.id)
      # grand total
      @sumForStripe = 0
      # cart savings calculations for display only
      @savings = 0
      userCart.each do |price|
        @sumForStripe += price[:price].to_i
        @savings += price[:was_price].to_i
      end
    end
  end

  # GET /carts/1
  # GET /carts/1.json
  def show
  end

  # GET /carts/new
  def new
    @cart = Cart.new
  end

  # GET /carts/1/edit
  def edit
  end

  # POST /carts
  # POST /carts.json
  def create
    @cart = Cart.new(cart_params)

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carts/1
  # PATCH/PUT /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
    @cart.destroy
    respond_to do |format|
      format.html { redirect_to carts_url, notice: 'Cart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_params
      params.require(:cart).permit(:company_name, :product_name, :description, :was_price, :price, :reference_number, :expiry_date, :qrcode, :user_id, :picture)
    end
end
