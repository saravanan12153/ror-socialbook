class PostsController < ApplicationController
  before_action :set_post, only: [:edit, :destroy, :update]

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      @post.create_activity key: 'post.created', owner: @post.user
      respond_to do |format|
        format.html {redirect_to user_path(@post.user.username), notice: @post.user.username+' created a post.'}
      end
    else
      redirect_to user_path(@post.user.username), notice: 'Something went wrong! Please try again later'
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      respond_to do |format|
        format.html {redirect_to user_path(@post.user.username), notice: @post.user.username+' edited a post.'}
      end
    else
      redirect_to edit_post_path(@post), notice: 'Something went wrong! Please try again later'
    end
  end

  def destroy
    @post.destroy
    respond_to do |format|
      format.html {redirect_to user_path(@post.user.username), notice: @post.user.username+' deleted a post.'}
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:content)
  end
end