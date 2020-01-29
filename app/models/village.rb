class Village < ApplicationRecord
  belongs_to :panchayat
  has_many :users, :as => :userable
end
