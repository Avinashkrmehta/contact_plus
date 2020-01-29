class District < ApplicationRecord
  belongs_to :state
  has_many :users, :as => :userable
end
