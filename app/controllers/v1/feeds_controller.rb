class V1::FeedsController < V1::VersionController

	def index
		@feeds = Feed.all
		render json: @feeds
	end

	def create
		@feed = Feed.new(feed_params)

		if @feed.save
			render json: @feed, status: :created
			Pusher.trigger('test_channel', 'my_event',@feed)
		else 
			render json: @feed.errors, status: :unprocessable_entity
		end
	end

	private

	def feed_params
		params.require(:feed).permit(:feed).merge(:user => current_user)
	end

end
