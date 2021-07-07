require 'pry'

def first_challenge
  contacts = {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_icecream_flavors: ["chocolate", "vanilla", "mint chip"],
      knows: nil
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_icecream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }

  # Method 1: 'iterate through each level until right one is reached':

  # contacts.each do |person, info|
  #   if person == "Freddy Mercury" # confirm you have the correct person hash
  #     info.each do |subject, answer|
  #       if subject == :favorite_icecream_flavors # confirm the correct key
  #         answer.delete_if { |x| x == "strawberry"} # iterate over array of values, perform an action.
  #       end
  #     end
  #   end
  # end

  # Method 2: 'iterate directly over the Freddy Mercury hash by using an enumerator method on it':

  contacts["Freddy Mercury"].each do |subject, answer|
    if subject == :favorite_icecream_flavors # confirm the correct key
      answer.delete_if { |x| x == "strawberry"} # iterate over array of values, perform an action.
    end
  end

  #remember to return your newly altered contacts hash!
  contacts
end
