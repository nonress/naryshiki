class WorkPostsController < ApplicationController
  before_action :logged_in_user
  before_action :correct_user, only: :destroy

  def index
    @workposts = WorkPost.paginate(page: params[:page])
  end

  def new
    @workpost = WorkPost.new
  end

  def show
    @workpost = WorkPost.find(params[:id])
  end

  def create
    @workpost = current_user.work_posts.new(workpost_params)
    if @workpost.save
      flash[:success] = '案件の投稿が完了しました'
      redirect_to work_post_path(@workpost)
    else
      render 'new'
    end
  end

  def destroy

  end

  private

    def workpost_params
      params.require(:work_post).permit(:title, :body, :skill, :reward, :category_ids)
    end
end
