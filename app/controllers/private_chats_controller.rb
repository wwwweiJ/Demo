# frozen_string_literal: true

class PrivateChatsController < ApplicationController
  before_action :authenticate_user!
  layout 'chatroom'
  def show
    @other_user = User.find(params[:id])
    @users = [current_user, @other_user]
    @project = current_user.projects.friendly.find(params[:project_id])
    @private_chat = PrivateChat.find_or_create(@users, params[:project_id])
    @contents = @private_chat.contents
    @content = Content.new
  end
end
