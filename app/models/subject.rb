class Subject < ApplicationRecord
  has_many :favorites

  def favorites_by?(user)
    favorites.where(user_id: user.id).exists?
  end






end
