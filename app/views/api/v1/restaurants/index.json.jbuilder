json.array! @restaurants do |restaurant|
  # Only want to send back the id and name? Get rid of address here.
  json.extract! restaurant, :id, :name, :address
end
