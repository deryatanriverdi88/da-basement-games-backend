class MagicTheGatherigCardsController < ApplicationController
    def index
        magic_the_gatherig_cards = MagicTheGatherigCard.all
        render json:magic_the_gatherig_cards.default_order
    end

    def last_ten
        # render json:cards = MagicTheGatherigCard.default_order.all.last(1000)
        render json:cards = MagicTheGatherigCard.default_order.all.slice(40000, 1000)
    end
end
