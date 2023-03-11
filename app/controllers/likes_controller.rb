class LikesController < ApplicationController
  before_action :set_user

  def like
    image_liked = Image.find(params[:id])

    if @current_user.images_likes.where(image_id: image_liked).empty?
      @current_user.images_likes.create(image_id: image_liked.id)
    else
      @current_user.images_likes.where(image_id: 35).delete_all
    end
  end
end
