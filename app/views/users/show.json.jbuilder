json.extract! @user, :id, :login, :password, :display_name, :created_at, :updated_at

json.bounties_offered @user.bounties_offered do |offered_bounty|
  json.description offered_bounty.description
  json.value offered_bounty.value
  json.category offered_bounty.category
  json.deadline offered_bounty.deadline
end

# bounties received

# cards offered

# cards received

# activities

# single actions
