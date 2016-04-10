class PostsController < ApplicationController
	def index
		@posts=Post.all.order("created_at DESC")
	end	
	def new
	end
	def create
		@posts= Post.new(post_params)
		@posts.save
		redirect_to @post
	end
	def show
		@posts=Post.find(params[:id])
	end
	private
	def post_params
		params.require(:posts).permit(:title,:body)
	end
end
