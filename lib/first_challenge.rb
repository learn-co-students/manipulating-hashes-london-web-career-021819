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

contacts["Freddy Mercury"].each do |keys, values| #attribute is the keys (name, email etc) & data is the values
    if keys == :favorite_icecream_flavors
      values.delete_if do |flavour|
        flavour == "strawberry"
        end
      end
   end
   contacts
end
