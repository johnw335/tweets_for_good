class Tweet < ApplicationRecord
  belongs_to :classification
  has_many :tweet_donation_joins

  def current_month
    month = Date.today.month
    month
  end

  def tweets_this_month
    this_months_tweets = Tweet.where(:created_at => Time.now.beginning_of_month..Time.now.end_of_month)
    return this_months_tweets
  end

end
