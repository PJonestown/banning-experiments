class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  validates :name, presence: true, uniqueness: true, 
    :length => { maximum: 20 }

  def to_s
    self.name
  end

end
