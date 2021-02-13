class GroupsController < ApplicationController


def index
  @group = Group.find(params[:group_id])
  @groups = @group.temperaturas.includes(:user)
end


  def new
    @group = Group.new
    @group.users << current_user
  end

  def create

    # if @group.save
    #   redirect_to root_path, notice: 'グループを作成しました'
    # else
    #   render :new
    # end

    if Group.exists?(name: '1')
      @group = Group.find_by(name: '1')
      @group.users << current_user
      redirect_to root_path, notice: 'グループを更新しました'
    elsif Group.exists?(name: '2')
      @group = Group.find_by(name: '2')
      @group.users << current_user
      redirect_to root_path, notice: 'グループを更新しました'
    elsif Group.exists?(name: '3')
      @group = Group.find_by(name: '3')
      @group.users << current_user
      redirect_to root_path, notice: 'グループを更新しました'
    else
      @group = Group.new(group_params)
      @group.save
      redirect_to root_path, notice: 'グループを作成しました'
    end 


  end

  private
  def group_params
    params.require(:group).permit(:name, user_ids: [])
  end

end
