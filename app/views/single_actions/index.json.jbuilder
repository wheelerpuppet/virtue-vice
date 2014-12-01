json.array!(@single_actions) do |single_action|
  json.extract! single_action, :id, :name, :is_complete, :due_date, :user_id, :points
  json.url single_action_url(single_action, format: :json)
end
