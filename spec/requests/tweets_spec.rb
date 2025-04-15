require 'rails_helper'

RSpec.describe "Tweets", type: :request do
  describe "GET /tweets" do
    it 'indexアクションにリクエストすると正常にレスポンスが返ってくる'do
    get root_path
    expect(response.status).to eq 200
    end
    it 'indexアクションにリクエストするとレスポンスに投稿済みのツイートのテキストが存在する' do
    end
    it 'indexアクションにリクエストするとレスポンスに投稿済みのツイートの画像URLが存在する' do 
    end
    it 'indexアクションにリクエストするとレスポンスに投稿検索フォームが存在する' do 
    end
  end
end

