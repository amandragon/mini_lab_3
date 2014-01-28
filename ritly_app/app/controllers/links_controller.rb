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
	checkit = params[:id]
	sendto=Link.find_by(checkit)
	redirect_to "http://#{sendto.original_link}"
	end
 



	def delete
	#need to make a delete method for the show page
	end

end
