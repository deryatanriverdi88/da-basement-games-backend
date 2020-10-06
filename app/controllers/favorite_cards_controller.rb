class FavoriteCardsController < ApplicationController
    def index
        favorite_cards = FavoriteCard.all
        render json: favorite_cards
    end

    def show
        favorite_card = FavoriteCard.find(params[:id])
        render json: favorite_card
    end

    def create
        favorite_card = FavoriteCard.create(favorite_cards_params)
        render json: favorite_card
    end

    def update
        favorite_card = FavoriteCard.find(params[:id])
        favorite_card.update(update_params)
        render json: favorite_card
    end
end
