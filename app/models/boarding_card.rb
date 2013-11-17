class BoardingCard < ActiveRecord::Base
	validates_presence_of :origin
	validates_presence_of :destination
	validates_presence_of :form_of_transport

	def trip_origin (boarding_cards)
		origin = ''
		position = 0
		while origin == ''
			possible_origin = boarding_cards[position][:origin]
			cont = 0
			@boarding_cards.each do |card|
				if possible_origin == @card[:destination]
					cont += 1
				end
			end

			if cont == 0
				origin = possible_origin
			end

			position += 1
		end

		return origin
	end

	def sort_cards (boarding_cards)
		sorted = []
		position = 0

		origin = trip_origin (boarding_cards)

		boarding_cards.each do |card|
			if card[:origin] == origin
				destination = card[:destination]
				sorted << card
			end
		end

		while sorted.length <= @boarding_cards.length
			@boarding_cards.each do |card|
				if destination == card[:origin]
					sorted << card
					origin = card[:origin]
					destination = card[:destination]
				end
			end
		end

		return sorted
	end

	def indications (boarding_card)
    	indications = "Take "+ boarding_card[:form_of_transport] + " from " + boarding_card[:origin] + " to " + boarding_card[:destination] + "." + boarding_card[:seat] + boarding_card[:extra_info]
  	end

  	def trip (boarding_cards)
  		sorted_cards = sort_cards(boarding_cards)

  		sorted_cards.each do |card|
  			puts indications(card)
  		end
  	end
end
