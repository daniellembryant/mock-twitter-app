class TweetsController < ApplicationController

  def index
    tweets = Tweet.all
    render json: tweets
    
  end

  def create
    tweet = Tweet.new(
      text: params[:text]
    )
    tweet.save
    render json: tweet
  end

  def show
    tweet = Tweet.find(params[:id])
    render json: tweet
  end

  def destroy
    tweet = Tweet.find_by(id: params[:id])
    tweet.destroy
    render json: {message: "Your user tweet is deleted."}
  end
end
