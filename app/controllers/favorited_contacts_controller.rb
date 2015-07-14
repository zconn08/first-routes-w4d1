class FavoritedContactsController < ApplicationController
  def index
      @user = User.find(params[:user_id])
      @favorite_contacts = @user.favorite_contacts
      render json: @favorite_contacts
  end

  def create
    @user = User.find(params[:user_id])
    @favorited_contact = @user.favorited_contacts.new(favorited_contacts_params)
    if @favorited_contact.save
      render json: @favorited_contact
    else
      render json: user.errors.full_messages, status: :unprocessable_entity
    end
  end

  private
  def favorited_contacts_params
    params.require(:favorited_contacts).permit(:user_id, :contact_id)
  end

end
