class FavoriteCard < ApplicationRecord
    belongs_to :user
    belongs_to :magic_the_gatherig_card

    validates :amount, presence: true
    validates :amount, numericality: { other_than: 0 }
    validates :user, presence: true
end
