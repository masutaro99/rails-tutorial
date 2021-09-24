require 'rails_helper'

describe 'static_page_API' do
  it 'リクエストが成功することを確認する' do

    get '/'
    json = JSON.parse(response.body)

    # リクエスト成功を表す200が返ってきたか確認する。
    expect(response.status).to eq(200)

  end
end