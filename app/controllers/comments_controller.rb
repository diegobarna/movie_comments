class CommentsController < ApplicationController

  def create
    Comment.create(username: params[:comment][:username], text: params[:comment][:text], movie_id: params[:movie_id])
    redirect_to movie_path(params[:movie_id])
  end

end
