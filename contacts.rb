require 'pry'

# this method returns a hash, which you can pass to the remove_strawberry method:
# remove_strawberry(contacts)
def contacts
  {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddy Mercury" => {
      name: "Freddy",
      email: "freddy@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
end

# iterates over contacts hash and remove strawberry when you reach :favorite_ice_cream_flavors
def remove_strawberry(contacts)
# 1. iterate over over top level of hash where keys = person & values = hash of details about person
  # your code here!
  contacts.each do |person, contact_details_hash|
# 2. iterate over second level if person is freddie
    if person == "Freddy Mercury"
      contact_details_hash.each do |attribute, data|
        binding.pry
# 3. locate element
        if attribute == :favorite_ice_cream_flavors
# 4. iterate through array of flavors and remove element that matches "strawberry"     
          data.delete_if {|ice_cream| ice_cream == "strawberry"}
        end
      end
  end
end
end

# print the output to the terminal for inspection
pp remove_strawberry(contacts)
