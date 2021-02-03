def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    new_array = []
    array.each do |name|
        new_array << badge_maker(name)
    end
    new_array
end

def assign_rooms(speaker)
    new_array = []
    speaker.each do |speak|
        new_array << "Hello, #{speak}! You'll be assigned to room #{(speaker.index(speak))+1}!"
    end
    new_array
end

def printer(attendees)
    batch_badge_creator(attendees).each do |attendee|
        puts attendee
    end
    assign_rooms(attendees).each do |room|
        puts room
    end
end