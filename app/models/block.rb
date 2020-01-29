class Block < ApplicationRecord
  belongs_to :district
  has_many :users, :as => :userable
end
