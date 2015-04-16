class User < ActiveRecord::Base
   validates :name, presence: true, uniqueness: { case_sensitive: false },
     :length => { maximum: 20 }

end
