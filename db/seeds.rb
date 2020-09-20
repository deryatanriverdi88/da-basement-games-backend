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


search_all_cards.each do |card|
    if card.include?('image_uris')
        MagicTheGatherigCard.create(name: card["name"], img_url: card['image_uris']['large'], price: card['prices']['usd'], cmc: card['cmc'], collector_number: card['collector_number'], color: card['colors'], foil: card['foil'], artist: card['artist'], lang: card['lang'], mana_cost: card['mana_cost'], rarity: card['rarity'], reprint: card['reprint'], reserved: card['reserved'], set: card['set'], set_type: card['set_type'], set_name: card['set_name'], type_line: card['type_line'])
    else
        MagicTheGatherigCard.create(name: card["name"], img_url: card['card_faces'][0]['image_uris']['large'], price: card['prices']['usd'], cmc: card['cmc'], collector_number: card['collector_number'], color: card['colors'], foil: card['foil'], artist: card['artist'], lang: card['lang'], mana_cost: card['mana_cost'], rarity: card['rarity'], reprint: card['reprint'], reserved: card['reserved'], set: card['set'], set_type: card['set_type'], set_name: card['set_name'], type_line: card['type_line'])
    end
end