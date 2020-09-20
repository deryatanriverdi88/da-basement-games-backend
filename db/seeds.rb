# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# MagicTheGatherigCard.destroy_all
# MagicTheGatherigCard.reset_pk_sequence

def card_names
    response = RestClient.get('https://api.scryfall.com/catalog/card-names' )
    json = JSON.parse(response)['data']
    return json
end



def search_all_cards
    cards = []
    card_names.first(2000).each do |name|
        response = RestClient.get('https://api.scryfall.com/cards/named?exact='+ name)
        cards.push(json = JSON.parse(response))
    end
    return cards
end