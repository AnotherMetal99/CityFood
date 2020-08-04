class MenuController < ApplicationController
  before_action :authenticate_user!, except: %i[show index]
  before_action :set_post, only: %i[show edit update destroy]

  def index
    @posts = Menu.all
  end

  def show; end

  def new
    @menu = Menu.new
  end

  def edit; end

  def create
    @menu= Menu.new(post_params)
    @menu.user_id = current_user.id if user_signed_in?
    if @menu.save
      redirect_to @menu
    else
      render 'new'
    end
  end

  def update
    if @menu.update(post_params)
      redirect_to @menu
    else
      render 'edit'
    end
  end

  def destroy
    @menu.destroy
    redirect_to dashboard_path
  end

  private

  def set_post
    @menu = Menu.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:first_course, :main_course, :drink, :price)
  end
end
