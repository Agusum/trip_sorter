json.array!(@boarding_cards) do |boarding_card|
  json.extract! boarding_card, 
  json.url boarding_card_url(boarding_card, format: :json)
end
