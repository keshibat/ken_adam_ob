class PagesController < ApplicationController
    def index
           # get current seller
           @sellers = Seller.all
           @product_listings = ProductListing.all 
    end
end


    


  