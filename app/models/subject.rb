class Subject < ApplicationRecord
  has_many :favorites

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end






end
