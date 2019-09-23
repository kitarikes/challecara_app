class SubjectsController < ApplicationController
  def top
    @subjects=Subject.all
  end
end
