class SubjectsController < ApplicationController
  def top
    @subjects=Subject.all
  end

  def show
    @subject = Subject.find_by(id: params[:id])
    
  
  end






end
