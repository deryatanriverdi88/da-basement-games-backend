class UserSerializer < ActiveModel::Serializer
  attributes :id, :email

  has_many :favorite_cards
  has_many :magic_the_gatherig_cards, through: :favorite_cards
end
