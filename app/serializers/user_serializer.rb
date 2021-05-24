class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :name, :company, :password
end
