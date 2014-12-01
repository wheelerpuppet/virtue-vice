json.array!(@activities) do |activity|
  json.extract! activity, :id, :verb, :amount, :subject, :interval, :relationship, :user_id, :points
  json.url activity_url(activity, format: :json)
end
