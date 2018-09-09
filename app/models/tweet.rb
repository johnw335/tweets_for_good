class Tweet < ApplicationRecord
  belongs_to :classification
  has_many :tweet_donation_joins
end
