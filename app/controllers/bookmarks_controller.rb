class BookmarksController < ApplicationController

	def index
		@bookmarks = Bookmark.all
	end

	def new
		@bookmark = Bookmark.new 
	end

	def create
		Bookmark.create(bookmark_params)
		redirect_to root_path
	end

	def about
		
	end

	private 

	def bookmark_params
		params.require(:bookmark).permit(:name, :description, :link)
	end
end
