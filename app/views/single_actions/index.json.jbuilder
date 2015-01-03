json.array!(@single_actions) do |single_action|
  json.extract! single_action, :id, :name, :is_complete, :user_id, :points
  json.due_date single_action.due_date.to_date.to_s
  json.url single_action_url(single_action, format: :json)
end
