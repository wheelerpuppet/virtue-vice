json.array!(@users) do |user|
  json.extract! user, :id, :login, :password, :display_name
  json.url user_url(user, format: :json)
end
