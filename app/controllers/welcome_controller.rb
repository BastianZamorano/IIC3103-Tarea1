class WelcomeController < ApplicationController
  before_action :authenticate_user!, only: [:admin]
  def index
  end
  def admin
  	@admin = Post.paginate(page: params[:page],per_page:4).order("created_at DESC")
  end
end
