class User < ActiveRecord::Base
    has_many :products
end
class Product < ActiveRecord::Base
    belongs_to :users
end
