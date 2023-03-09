class ImagesController < ApplicationController
  before_action :set_user
  before_action :set_image, only: [:update, :destroy]

  def index
    @tags = []
  end

  def show
    @image = Image.find_by(identifier: params[:identifier])
    @tags = []
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
    @image = Image.update(image_params)
  end

  def delete
    @image.delete
  end

  private

  def set_image
    @image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(:title, :location, :identifier, :user_id, :path, :photo, tag_ids: [])
  end
end
