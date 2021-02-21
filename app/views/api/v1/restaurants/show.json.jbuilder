json.extract! @restaurant, :id, :name, :address
json.comments @restaurant.comments do |comment| # Loop over the comments and extract the ID and the content
  json.extract! comment, :id, :content
end
