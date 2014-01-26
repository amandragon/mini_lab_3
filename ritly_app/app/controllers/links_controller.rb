class LinksController < ApplicationController

	def index

	end

	def new
	@link=Link.new
	end


	def create
		new_link=params.require(:link).permit(:original_link, :random_generated_string)
		link=Link.create(new_link)
		redirect_to links_path(link.id)
	end

	def show
		  id = params[:id]
        @link = Link.find(id)
	end
end
