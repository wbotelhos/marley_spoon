# frozen_string_literal: true

RSpec.describe Application, '#index' do
  def app
    Application
  end

  it 'response ok' do
    get '/recipes'

    expect(last_response.status).to be(200)
  end
end
