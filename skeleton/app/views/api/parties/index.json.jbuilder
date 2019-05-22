@parties.each do |party|
    json.set! party.id do
        json.extract! party, :name, :location
        party.guests.each do |guest|
            json.set! guest.id do 
                json.partial! '/api/guests/guest', guest: guest
            end
        end
    end
end