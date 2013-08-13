class Api::PostsController < RocketPants::Base

  include Devise::Controllers::Helpers
  include CanCan::ControllerAdditions

  before_filter :authenticate_user!

  map_error! CanCan::AccessDenied, RocketPants::Forbidden

  def index
    authorize! :read, Post, message: 'Not authorized for API use.'

    @search = Post.search(params[:q])
    expose @search.result.order(:created_at).page params[:page]

  end

  def show
    authorize! :read, Post, message: 'Not authorized for API use.'

    expose Post.find(params[:id])
  end

  def create
    authorize! :create, Post, message: 'Not authorized as an administrator.'

    expose Post.create!(params[:post]), status: :created
  end

  def update
    authorize! :update, Post, message: 'Not authorized as an administrator.'

    @post = Post.find(params[:id])

    @post.update_attributes(params[:post])

    expose @post
  end

  def destroy
    authorize! :destroy, Post, message: 'Not authorized as an administrator.'

    @post = Post.find(params[:id])
    @post.destroy
  end
end
