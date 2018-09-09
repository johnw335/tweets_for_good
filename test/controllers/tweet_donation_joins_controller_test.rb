require 'test_helper'

class TweetDonationJoinsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tweet_donation_join = tweet_donation_joins(:one)
  end

  test "should get index" do
    get tweet_donation_joins_url
    assert_response :success
  end

  test "should get new" do
    get new_tweet_donation_join_url
    assert_response :success
  end

  test "should create tweet_donation_join" do
    assert_difference('TweetDonationJoin.count') do
      post tweet_donation_joins_url, params: { tweet_donation_join: {  } }
    end

    assert_redirected_to tweet_donation_join_url(TweetDonationJoin.last)
  end

  test "should show tweet_donation_join" do
    get tweet_donation_join_url(@tweet_donation_join)
    assert_response :success
  end

  test "should get edit" do
    get edit_tweet_donation_join_url(@tweet_donation_join)
    assert_response :success
  end

  test "should update tweet_donation_join" do
    patch tweet_donation_join_url(@tweet_donation_join), params: { tweet_donation_join: {  } }
    assert_redirected_to tweet_donation_join_url(@tweet_donation_join)
  end

  test "should destroy tweet_donation_join" do
    assert_difference('TweetDonationJoin.count', -1) do
      delete tweet_donation_join_url(@tweet_donation_join)
    end

    assert_redirected_to tweet_donation_joins_url
  end
end
