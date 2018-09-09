class CreateTweetDonationJoins < ActiveRecord::Migration[5.1]
  def change
    create_table :tweet_donation_joins do |t|
      t.belongs_to :user
      t.belongs_to :tweet
      t.timestamps
    end
  end
end
