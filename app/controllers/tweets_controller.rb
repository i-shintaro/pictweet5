class TweetsController < ApplicationController
  def index
    #@tweetsのインスタンス変数ににTweetテーブルに入っているレコードを代入している
    @tweets = Tweet.all
  end
end
