json.array!(@habits) do |habit|
  json.extract! habit, :id, :verb, :amount, :subject, :interval_id, :user_id
  json.url habit_url(habit, format: :json)
end
