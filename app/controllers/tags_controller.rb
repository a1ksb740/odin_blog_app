class TagsController < ApplicationController
  before_action :require_login, only: [:create]
  
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end
  
  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy

    flash.notice = "Tag '#{@tag.name}' Removed!"

    redirect_to tags_path
  end
end
