class Panchayat < ApplicationRecord
  belongs_to :block
  has_many :users, :as => :userable
end
