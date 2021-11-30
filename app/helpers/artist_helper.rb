module ArtistHelper
  def api_artist(_url_params)
    token = ENV['token']
    url = 'https://moat.ai/api/task'
    RestClient.get(url, basic: token, params: { artist_id: _url_params })
  end
end
