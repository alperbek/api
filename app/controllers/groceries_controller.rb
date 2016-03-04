class GroceriesController < ApplicationController
  before_action :set_grocery, only: [:show, :update, :destroy]

  # GET /groceries
  # GET /groceries.json
  def index
    @groceries = Grocery.all

    render json: @groceries
  end

  # GET /groceries/1
  # GET /groceries/1.json
  def show
    render json: @grocery
  end

  # POST /groceries
  # POST /groceries.json
  def create
    @grocery = Grocery.new(grocery_params)

    if @grocery.save
      render json: @grocery, status: :created, location: @grocery
    else
      render json: @grocery.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /groceries/1
  # PATCH/PUT /groceries/1.json
  def update
    @grocery = Grocery.find(params[:id])

    if @grocery.update(grocery_params)
      head :no_content
    else
      render json: @grocery.errors, status: :unprocessable_entity
    end
  end

  # DELETE /groceries/1
  # DELETE /groceries/1.json
  def destroy
    @grocery.destroy

    head :no_content
  end

  private

    def set_grocery
      @grocery = Grocery.find(params[:id])
    end

    def grocery_params
      params.require(:grocery).permit(:item, :quantity, :list_id)
    end
end
