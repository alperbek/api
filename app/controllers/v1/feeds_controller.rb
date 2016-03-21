class V1::FeedsController < V1::VersionController
	before_action :set_feed , only: [:show, :update, :destroy]

	def index
		@feeds = Feed.all
		render json: @feeds
	end

	def create
		@feed = Feed.new(feed_params)

		if @feed.save
			Pusher.trigger('feeds', 'create', { feed: @feed.id , user_id: current_user.id })
			render json: @feed, status: :created
		else 
			render json: @feed.errors, status: :unprocessable_entity
		end
	end

	def show
		render json: @feed
	end

	private

	def feed_params
		params.require(:feed).permit(:feed).merge(:user => current_user)
	end

	def set_feed
        @feed = Feed.find(params[:id])
    end

end
