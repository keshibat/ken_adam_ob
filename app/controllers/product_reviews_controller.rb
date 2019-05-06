class ProductReviewsController < ApplicationController
  before_action :set_product_review, only: [:show, :edit, :update, :destroy]

  # GET /product_reviews
  # GET /product_reviews.json
  def index
    @product_reviews = ProductReview.where(user_id: current_user.id)
    # if not signed in
    if current_user != nil
      # cart quantity check
      @quantity = Cart.where(user_id: current_user.id).count
      # seller check needed - no adding to cart for seller
      @sellerCheck = Seller.where(user_id: current_user.id).first
    end 
  end

  # GET /product_reviews/1
  # GET /product_reviews/1.json
  def show

    @product_listing = ProductListing.find(params[:id])
    @views = ProductReview.where(product_listing_id: params[:id])
    @company = Seller.find(@product_listing.seller_id)
    # if not signed in
    if current_user != nil
      # cart quantity check
      @quantity = Cart.where(user_id: current_user.id).count
      # seller check needed - no adding to cart for seller
      @sellerCheck = Seller.where(user_id: current_user.id).first
    end  
  end

  # GET /product_reviews/new
  def new
    @product_review = ProductReview.new
  end

  # GET /product_reviews/1/edit
  def edit
  end

  # POST /product_reviews
  # POST /product_reviews.json
  def create
    if current_user != nil
      # add review
      ProductReview.create(name: params[:name], review: params[:review], product_listing_id: params[:id], user_id: current_user.id)
      redirect_to product_review_path(params[:id])
    end
  end

  # PATCH/PUT /product_reviews/1
  # PATCH/PUT /product_reviews/1.json
  def update
    respond_to do |format|
      if @product_review.update(product_review_params)
        format.html { redirect_to @product_review, notice: 'Product review was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_review }
      else
        format.html { render :edit }
        format.json { render json: @product_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_reviews/1
  # DELETE /product_reviews/1.json
  def destroy
    prod_delete = ProductReview.find(params[:id])
    prod_delete.destroy
    respond_to do |format|
      format.html { redirect_to product_reviews_url, notice: 'Product review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_review
      # @product_review = ProductReview.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_review_params
      params.require(:product_review).permit(:name, :review, :product_listing_id, :user_id)
    end
end
