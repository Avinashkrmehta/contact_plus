class StateSerializer < ActiveModel::Serializer
  attributes :id, :name, :code
  has_many :districts
  has_many :users, :as => :userable
end
