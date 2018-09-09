class TwitterApi
  def self.our_public_tweets
    client.user_timeline('realDonaldTrump', count: 1, exclude_replies: true, include_rts: false)
  end

  def self.client
    @client ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = 'SeakXaCex7UdJt5X17IdmHjr8'
      config.consumer_secret     = 'vVz4dOFfq97lXFMUXsMLVTBWZ9DG7xw9SijWLrtskmTg4rIAU7'
    end
  end
end