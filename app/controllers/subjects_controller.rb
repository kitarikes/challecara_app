class SubjectsController < ApplicationController
  def top
    @subjects = Subject.all
  end

  def show
    @user = User.find(params[:id])
    
    @favorite_tweets = @user.favorite_subjects # 追加
  end






end
