require 'rails_helper'

describe 'API' do
  it 'returns all items' do
    item = Item.create(name: 'Thing2', description: "WTF", image_url: "haha.jpg")

    get '/api/v1/items'

    expect(response).to be_success

    things = JSON.parse(response.body)
    expect(things[0]["name"]).to eq('Thing2')
  end

  it 'finds specific item' do
    item = Item.create(name: 'Thing2', description: "WTF", image_url: "haha.jpg")

    get '/api/v1/items/1'

    expect(response).to be_success

    thing = JSON.parse(response.body)
    expect(thing["name"]).to eq('Thing2')
  end
end
