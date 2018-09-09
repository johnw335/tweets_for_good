class TweetDonationJoinsController < ApplicationController
  before_action :set_tweet_donation_join, only: [:show, :edit, :update, :destroy]

  # GET /tweet_donation_joins
  # GET /tweet_donation_joins.json
  def index
    @tweet_donation_joins = TweetDonationJoin.all
  end

  # GET /tweet_donation_joins/1
  # GET /tweet_donation_joins/1.json
  def show
  end

  # GET /tweet_donation_joins/new
  def new
    @tweet_donation_join = TweetDonationJoin.new
  end

  # GET /tweet_donation_joins/1/edit
  def edit
  end

  # POST /tweet_donation_joins
  # POST /tweet_donation_joins.json
  def create
    @tweet_donation_join = TweetDonationJoin.new(tweet_donation_join_params)

    respond_to do |format|
      if @tweet_donation_join.save
        format.html { redirect_to @tweet_donation_join, notice: 'Tweet donation join was successfully created.' }
        format.json { render :show, status: :created, location: @tweet_donation_join }
      else
        format.html { render :new }
        format.json { render json: @tweet_donation_join.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tweet_donation_joins/1
  # PATCH/PUT /tweet_donation_joins/1.json
  def update
    respond_to do |format|
      if @tweet_donation_join.update(tweet_donation_join_params)
        format.html { redirect_to @tweet_donation_join, notice: 'Tweet donation join was successfully updated.' }
        format.json { render :show, status: :ok, location: @tweet_donation_join }
      else
        format.html { render :edit }
        format.json { render json: @tweet_donation_join.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tweet_donation_joins/1
  # DELETE /tweet_donation_joins/1.json
  def destroy
    @tweet_donation_join.destroy
    respond_to do |format|
      format.html { redirect_to tweet_donation_joins_url, notice: 'Tweet donation join was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tweet_donation_join
      @tweet_donation_join = TweetDonationJoin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tweet_donation_join_params
      params.fetch(:tweet_donation_join, {})
    end
end
