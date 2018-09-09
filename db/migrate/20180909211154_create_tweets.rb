class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.string :body
      t.belongs_to :classification
      t.datetime :tweeted_at
      t.timestamps
    end
  end
end
