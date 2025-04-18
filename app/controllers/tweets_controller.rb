class TweetsController < ApplicationController
  # コントローラーで定義されたアクションが実行される前に、共通の処理を行う
  before_action :set_tweet, only: [:edit, :show]
  before_action :move_to_index, except: [:index, :show]
  def index
    #@tweetsのインスタンス変数ににTweetテーブルに入っているレコードを代入している
    @tweets = Tweet.all
  end

  def new
    #@tweetのインスタンス変数にTweetモデルのnewメソッドを用いて新しいインスタンスを生成している
    @tweet = Tweet.new
  end

  def create
    Tweet.create(tweet_params)
    redirect_to '/'
  end

  def destroy
# paramsでルーティングから送られてきたidを使用して、Tweetモデルを使ってデータベースから該当するツイートオブジェクトを取得する
    tweet = Tweet.find(params[:id])
# tweet.destroyで、取得したツイートのレコードがデータベースから削除されます。
    tweet.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    tweet = Tweet.find(params[:id])
    tweet.update(tweet_params)
    redirect_to root_path
  end

  def show
  end

  private
  def tweet_params
    params.require(:tweet).permit(:name, :image, :text)
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def move_to_index
    #ログインしているユーザーでない時の処理
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end

