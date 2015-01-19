json.array!(@indulgences) do |indulgence|
  json.extract! indulgence, :id, :verb, :amount, :subject, :interval_id, :user_id, :points
  json.url indulgence_url(indulgence, format: :json)
end
