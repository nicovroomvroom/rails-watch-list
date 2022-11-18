class BookmarksController < ApplicationController
  def new
    @bookmark = Bookmark.new
  end
  def create
    @bookmark = Bookmark.new(list_params)
    @bookmark.save
    redirect_to lists_path
  end

  private

  def list_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end
end
