class MagicTheGatherigCardsController < ApplicationController
    def index
        magic_the_gatherig_cards = MagicTheGatherigCard.all
        render json:magic_the_gatherig_cards.default_order
    end

    def last_ten
        render json:cards = MagicTheGatherigCard.all.first(10)
    end
end
