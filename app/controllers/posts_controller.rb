class PostsController < ApplicationController
	before_action :authenticate_user!, except: [:show,:index]
	before_action :set_post, except: [:index,:new,:create]

	
	#GET /posts
	def index
		@posts = Post.paginate(page: params[:page],per_page:4).order("created_at DESC")	
	end
		
	
	def create
		
		@post = current_user.posts.new(post_params)
		if @post.save
			redirect_to @post
		else
			render :new
		end
	end
	#GET articles/:id
	def show
		@comment = Comment.new
	end 

	#GET posts/new
	def new
		@post = Post.new
	end

	def edit
	end

	#POST /posts
	def destroy
		
		@post.destroy
		redirect_to posts_path
		#@post.update(deleted_state: true)
	end

	def update
		@post = Post.find(params[:id])
		if @post.update(post_params)
			redirect_to @post
		else
			render :edit
		end
	end 

	private 

	def post_params
		params.require(:post).permit(:title,:subtitle,:body)
	end 

	def set_post
		@post = Post.find(params[:id])
	end

	

end