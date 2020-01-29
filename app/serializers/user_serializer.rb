class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :userable_id, :userable_type
end
