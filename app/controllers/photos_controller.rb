class PhotosController < ApplicationController

	def index
		@photos = Photo.all
	end

	def new
		@photo = Photo.new
	end

	def show
		@photo = Photo.find(params[:id])
	end

	def create
		@photo = current_user.photos.build(photo_params)

		if @photo.save
			flash[:success] = "Your post has been created!"
			redirect_to root_path
		else
			flash[:alert] = "Your new post couldn't be created!  Please check the form."
			render :new
		end
	end

	def destroy
		@photo = Photo.destroy(params[:id])
		redirect_to :back
	end

	private

	def photo_params
		params.require(:photo).permit(:name, :image, :user_id)
	end

end
