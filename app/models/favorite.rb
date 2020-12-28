class Favorite < ApplicationRecord

  belongs_to :user
  belongs_to :gh

  validates_uniqueness_of :gh_id, scope: :user_id

end
