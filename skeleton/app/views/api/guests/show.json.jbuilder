json.partial! 'api/guests/guest', guest: @guest

json.gifts @guest.gifts, partial: 'api/gifts/gift', as: :gift

# json.gifts do 
#     @guest.gifts.each do |gift| 
#         json.set! gift.id do
#             json.partial! 'api/gifts/gift', gift: gift
#         end
#     end
# end

# json.gifts do 
#     json.set! @guest.gifts do
#         json.partial! 'api/gifts/gift', gift: gift
#     end
# end