class LinksController < ApplicationController

	def index
    	@links=Link.all
        render :index
	end

	def new
	@link=Link.new
	render :new
	end


	def create
		new_link=params.require(:link).permit(:original_link, :random_generated_string)
		link=Link.create(new_link)
		redirect_to links_path(link.id)
	end

	def show
		 id = params[:id]
        @link = Link.find(id)
         render :show
	end

	def save
	@link<<new_link
	redirect_to links_path(link.original_link)
	end

	def delete
	end

	def result
		redirect_to '/links.:id/:original_link'
	end
end
