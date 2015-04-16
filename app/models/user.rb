class User < ActiveRecord::Base
  has_many :posts

   validates :name, presence: true, uniqueness: { case_sensitive: false },
     :length => { maximum: 20 }

   def to_s
    self.name
   end

end
