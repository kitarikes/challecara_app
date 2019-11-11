class Subject < ApplicationRecord
  has_many :favorites
  has_many :subject_images

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end






end
