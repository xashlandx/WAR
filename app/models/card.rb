class Card < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :deck
end
