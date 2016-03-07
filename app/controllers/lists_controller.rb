class ListsController < ApplicationController
  include ActionController::Live
  before_action :set_list, only: [:show, :update, :destroy]

  # GET /lists
  # GET /lists.json
  def index
    @lists = List.all

    render json: @lists
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
    render json: @list
  end

  # def events
  #   response.headers["Content-Type"] = "text/event-stream"
  #   redis = Redis.new
  #   redis.subscribe('item.create') do |on|
  #       on.message do |event , data |
  #           response.stream.write "Hello, browser! \n"
  #       end
  #   end
  #   response.stream.close
  # end

  # POST /lists
  # POST /lists.json
  def create
    @list = List.new(list_params)

    if @list.save
      render json: @list, status: :created, location: @list
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lists/1
  # PATCH/PUT /lists/1.json
  def update
    @list = List.friendly.find(params[:id])

    if @list.update(list_params)
      head :no_content
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    @list.destroy

    head :no_content
  end

  private

  def set_list
    @list = List.friendly.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:title, :slug, :mode)
  end
end
