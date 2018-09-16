class WelcomeController < ApplicationController

  # GET /welcomes
  # GET /welcomes.json
  def index
    # @month = Tweet.tweets_this_month
    # puts @month
    @tweets = Tweet.first
    @tweets.tweets_this_month
    @number_of_tweets_this_month = @tweets.tweets_this_month.count
  end

end
