class TagsController < ApplicationController
  before_filter :require_login, only: [:destroy]
  
  def index
    @tags = Tag.all
  end

  def show
    @tags = Tag.find(params[:id])
  end

  def destroy
      @tags = Tag.find(params[:id])
      @tags.destroy
      flash[:notice] = "Tag '#{@tags.name}' destroyed!"
      redirect_to tags_path
    end
end
