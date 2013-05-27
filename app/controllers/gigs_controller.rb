class GigsController < ApplicationController
  def index
    @gigs = Gig.all

    render json: @gigs
  end

  def show
    @gig = Gig.find(params[:id])

    render json: @gig
  end

  def create
    @gig = Gig.new(params[:gig])

    if @gig.save
      render json: @gig, status: :created, location: @gig
    else
      render json: @gig.errors, status: :unprocessable_entity
    end
  end

  def update
    @gig = Gig.find(params[:id])

    if @gig.update_attributes(params[:gig])
      head :no_content
    else
      render json: @gig.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @gig = Gig.find(params[:id])
    @gig.destroy

    head :no_content
  end
end
