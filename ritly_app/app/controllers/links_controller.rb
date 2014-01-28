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
		new_link[:random_generated_string]=SecureRandom.urlsafe_base64(3)
		link=Link.create(new_link)
		redirect_to link_path(link.id)
	end

	def preview
	id = params[:id]
    @link = Link.find(id)
	render :preview
	end

	def go
	id=params[:random_generated_string]
	link=Link.find_by_random_generated_string(id)
	redirect_to link.original_link
	end
 



	def delete
	#need to make a delete method for the show page
	end

end
