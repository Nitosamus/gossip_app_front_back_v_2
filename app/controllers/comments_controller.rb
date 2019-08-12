class CommentsController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    puts params
    @comment = Comment.create(comment_params)
    redirect_back fallback_location: '/', allow_other_host: true
    puts params
  end

  def edit
    @comment = Comment.find(params[:id]) 
  end

  def update
    @comment = Comment.find(params[:id])  
    @comment.update(comment_params)
    puts params
    redirect_to gossip_path
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to gossips_path
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
