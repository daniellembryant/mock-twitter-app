class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_name, :bio, :location

  has_many :tweets
end
