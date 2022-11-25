class User::RelationshipsController < ApplicationController
	before_action :set_user

  def create
      following = current_user.follow(@user)
      if following.save
          flash[:success] = 'ユーザーをフォローしました'
          redirect_to @user
      else
          flash.now[:alert] = 'ユーザーのフォローに失敗しました'
          redirect_to @user
      end
  end

  def destroy
      following = current_user.unfollow(@user)
      if following.destroy
          flash[:success] = 'ユーザーのフォローを解除しました'
          redirect_to @user
      else
          flash.now[:alert] = 'ユーザーのフォロー解除に失敗しました'
          redirect_to @user
      end
  end

  def follower #follower一覧
      user = User.find(params[:user_id])
      @users = user.following_user
    # .follower_userメソッド ：Userモデルで定義済
  end

  def followed #followed一覧
      user = User.find(params[:user_id])
      @users = user.follower_user
    # .follower_userメソッド ：Userモデルで定義済
  end

  private
      def set_user
          @user = User.find params[:follow_id]
      end

end