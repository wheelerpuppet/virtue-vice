json.array!(@opportunities) do |opportunity|
  json.extract! opportunity, :id, :name, :is_complete, :due_date, :user_id, :points
  json.url opportunity_url(opportunity, format: :json)
end
