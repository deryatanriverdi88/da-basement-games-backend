class FavoriteCardSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :magic_the_gatherig_card_id, :amount, :foil

  # belongs_to :user
  belongs_to :magic_the_gatherig_card
end