class MagicTheGatherigCardsController < ApplicationController
    def index
        magic_the_gatherig_cards = MagicTheGatherigCard.all
        render json:magic_the_gatherig_cards.default_order
    end

    def last_ten
        # render json:cards = MagicTheGatherigCard.default_order.all.slice(50000, MagicTheGatherigCard.default_order.all.length-1)
        render json:cards = MagicTheGatherigCard.default_order.all.first(100)
    end
end
