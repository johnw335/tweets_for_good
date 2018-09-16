# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
test_user = User.create!(email: 'test@email.com', venmo_account: 'test_venmo_account', donation_amount: 0.25, password: 'password' )

immigration = Classification.create!(name: 'immigration', description: 'tweets targeting immigrants')

women = Classification.create!(name: 'women', description: 'tweets targeting women')

immigration_tweet = Tweet.create!(body: 'test tweet attacking immigrants', classification: immigration, tweeted_at: Time.now )

women_tweet = Tweet.create!(body: 'test tweet attacking women', classification: women, tweeted_at: Time.now )

TweetDonationJoin.create!(user: test_user, tweet: immigration_tweet)
TweetDonationJoin.create!(user: test_user, tweet: women_tweet)