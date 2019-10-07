class SubjectsController < ApplicationController
  before_action :authenticate_user!, except: [:index]  # deviseのメソッドで「ログインしていないユーザーをログイン画面に送る」メソッド
  def new
    @subject = Subject.new # 新規投稿用の空のインスタンス
  end

  def create
    
  end

  def index
    @subjects = Subject.all
  end

  def show
    @subject = Subject.find(params[:id])
  end
end