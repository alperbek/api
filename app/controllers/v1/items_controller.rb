class V1::ItemsController < V1::VersionController
    before_action :get_list
    before_action :set_item, only: [:update, :destroy]

    # GET /items
    # GET /items.json
    def index
        render json: @list , serializer: ListItemSerializer

    end

    # POST /items
    # POST /items.json
    def create
        @item = Item.new(item_params)

        if @item.save
            render json: @item, status: :created, location:[@list,@item]
        else
            render json: @item.errors, status: :unprocessable_entity
        end
    end

    # PATCH/PUT /items/1
    # PATCH/PUT /items/1.json
    def update
        if @item.update(item_params)
            head :no_content
        else
            render json: @item.errors, status: :unprocessable_entity
        end
    end

    # DELETE /items/1
    # DELETE /items/1.json
    def destroy
        @item.destroy

        head :no_content
    end

    private

    def set_item
        @item = @list.items.find(params[:id])
    end

    def get_list
        @list = List.includes(:items).select(:id,:slug,:icon,:title).friendly.find(params[:list_id])
    end

    def item_params
        params.require(:item).permit(:item).merge(list: @list)
    end
end