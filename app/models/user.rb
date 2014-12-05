class User < ActiveRecord::Base

has_many :activities
has_many :comments
has_many :cards
has_many :cards_offered

has_many :single_actions
has_many :bounties_offered, :class_name => 'Bounty', :foreign_key => 'author_id', :dependent => :destroy
has_many :bounties_received, :class_name => 'Bounty', :foreign_key => 'recipient_id'
# Bounties and cards as recipients as well

end
