class Blog::Comment < ApplicationRecord
  belongs_to :post
end
