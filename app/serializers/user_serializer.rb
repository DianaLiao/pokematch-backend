class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :companion_id
end
