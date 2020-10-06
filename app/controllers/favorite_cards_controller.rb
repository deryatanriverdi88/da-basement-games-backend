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

    def destroy
        favorite_card = FavoriteCard.find(params[:id])
        favorite_card.destroy
    end

    private

    def favorite_card_params
        params.permit(:user_id, :magic_the_gatherig_id, :name, :img_url, :category_id, :product_id, :group_id, :rarity, :sub_type, :color, :text, :foil, :group_name, :normal_low_price, :normal_mid_price, :normal_high_price, :normal_market_price, :foil_low_price, :foil_mid_price, :foil_high_price, :foil_market_price, :amount)
    end

    def update_params
        params.permit(:amount)
    end
end
