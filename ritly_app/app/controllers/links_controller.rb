class LinksController < ApplicationController

	def index

	end

	def new
	@link=Link.new
	end


	def create
		new_link=params.require(:link).permit[:original_link]
		link=Link.create(new_link)
		redirect_to links_path(link.id)
	end

	def show
		  id = params[:id]
        @link = Link.find(id)
	end

	def save
	end

	def delete
	end

	def result
	end
end
