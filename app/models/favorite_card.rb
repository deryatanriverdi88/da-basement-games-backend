class FavoriteCard < ApplicationRecord
    belongs_to :user
    belongs_to :magic_the_gatherig_card
end
