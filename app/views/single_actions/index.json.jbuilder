json.array!(@single_actions) do |single_action|
  json.extract! single_action, :id, :name, :is_complete, :user_id, :points
  if single_action.due_date.nil?
    json.due_date nil.to_s
  else
    json.due_date single_action.due_date.to_date.to_s
  end
  json.url single_action_url(single_action, format: :json)
end
