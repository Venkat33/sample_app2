class Article < ActiveRecord::Base
validates :tittle, presence:true, length: {minimum: 3, maximum: 50}
validates :description, presence:true, length:{minimum: 5, maximum: 50}

end
