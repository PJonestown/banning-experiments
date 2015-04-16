class User < ActiveRecord::Base
  validates :user, presence: true, uniqueness: { case_sensitive: false }, :length => { maximum: 20 }
end
