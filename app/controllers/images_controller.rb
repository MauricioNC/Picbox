class ImagesController < ApplicationController
  before_action :set_user
  before_action :set_image, only: [:edit, :update, :destroy]

  def index
  end

  def show
    @image = Image.find_by(identifier: params[:identifier])
  end

  def new
    @image = Image.new
  end

  def create
    @new_image = @current_user.images.create(image_params)

    if @new_image.save
      redirect_to '/images', notice: "Image uploaded successfully"
    else
       render :new, error: @new_image.errors.full_messages
    end
  end

  def edit
  end

  def update
    if @image.update(image_params)
      redirect_to images_path
    else
      render :edit
    end
  end

  def destroy
    if @image.tags.delete_all && @image.delete
      redirect_to images_path
    else
      render :index, error: "Error deleting the image"
    end
  end

  private

  def set_image
    @image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:title, :location, :identifier, :user_id, :path, :photo, tag_ids: [])
  end
end
