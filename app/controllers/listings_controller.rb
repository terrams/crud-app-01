class ListingsController < ApplicationController

  def index
    @listings = Listing.all
    render 'index.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create  
    listing = Listing.new(
    title: params[:title],
    description: params[:description])
    listing.save
    redirect_to 'show.html.erb'
  end

  def show
    listing_id = params[:id]
    @listing = Listing.find_by(id: listing_id)
    render 'show.html.erb'
  end

  def edit
    listing_id = params[:id]
    @listing = Listing.find_by(id: listing_id)
    render 'edit.html.erb'
  end

  def update
    redirect_to 'show.html.erb'
  end

  def destroy
    redirect_to 'index.html.erb'
  end

end
