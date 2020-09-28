# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# MagicTheGatherigCard.destroy_all
# MagicTheGatherigCard.reset_pk_sequence

payload = "grant_type=client_credentials&client_id="+ENV["api_public_key"]+"&client_secret="+ENV["api_private_key"]

token = RestClient.post("https://api.tcgplayer.com/token", payload  ,headers={"content-type": "application/x-www-form-urlencoded"})

token = JSON.parse(token)
@access_token = token['access_token']

def all_cards
    length = 0
    response = RestClient.get 'https://api.tcgplayer.com/catalog/products?categoryId=1&productTypes=cards', {:Authorization => 'Bearer '+ @access_token}
    length = JSON.parse(response)['totalItems']
    offset = 0
    json = []
    while offset < length do
        response = RestClient.get('https://api.tcgplayer.com/catalog/products?categoryId=1&getExtendedFields=true&productTypes=cards&offset='+offset.to_s+'&limit=100', {:Authorization => 'Bearer '+ @access_token}){ |response, request, result, &block|
                        case response.code
                        when 200
                            json.push(JSON.parse(response)['results'])
                        when 404
                            puts offset, count
                        else
                          response.return!(request, result, &block)
                        end }
        offset += 100
    end
    return json.flatten
end

def check_rarity(values)
    rarity = ""
    values.each do |value|
        if value['name'] === "Rarity"
            if value['value'] == 'U'
                rarity = 'Uncommon'
            elsif value['value'] == 'T'
                rarity = 'Token'
            elsif value['value'] == 'S'
                rarity = 'Special'
            elsif value['value'] == 'P'
                rarity = 'Promo'
            elsif value['value'] == 'M'
                rarity = 'Mythic'
            elsif value['value'] == 'L'
                rarity = 'Land'
            elsif value['value'] == 'C'
                rarity = 'Common'
            elsif value['value'] == 'R'
                rarity = 'Rare'
            end
        end
    end
    return rarity
end


search_all_cards.each do |card|
    if card.include?('image_uris')
        MagicTheGatherigCard.create(name: card["name"], img_url: card['image_uris']['large'], price: card['prices']['usd'], cmc: card['cmc'], collector_number: card['collector_number'], color: card['colors'], foil: card['foil'], artist: card['artist'], lang: card['lang'], mana_cost: card['mana_cost'], rarity: card['rarity'], reprint: card['reprint'], reserved: card['reserved'], set: card['set'], set_type: card['set_type'], set_name: card['set_name'], type_line: card['type_line'])
    else
        MagicTheGatherigCard.create(name: card["name"], img_url: card['card_faces'][0]['image_uris']['large'], price: card['prices']['usd'], cmc: card['cmc'], collector_number: card['collector_number'], color: card['colors'], foil: card['foil'], artist: card['artist'], lang: card['lang'], mana_cost: card['mana_cost'], rarity: card['rarity'], reprint: card['reprint'], reserved: card['reserved'], set: card['set'], set_type: card['set_type'], set_name: card['set_name'], type_line: card['type_line'])
    end
end

puts "seeded"