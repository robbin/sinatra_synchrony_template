get '/' do
  p = Post.find :first
  "Hello world! #{p.name}\n"
end

get '/post/:id' do
  content_type :json
  p = Post.find params[:id]
  Post.find_by_sql "SELECT SLEEP(1)"
  p.to_json
end
  
get '/example.json' do
  content_type :json
  { :key1 => '<html>value1</html>', :key2 => 'value2' }.to_json
end

get '/facebook' do
  conn = Faraday.new(:url => 'http://www.facebook.com') do |faraday|
    faraday.request  :url_encoded             # form-encode POST params
    faraday.response :logger                  # log requests to STDOUT
    # faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
    faraday.adapter  :em_synchrony            # fiber aware http client
  end
  response = conn.get do |request|
    request.url "/"
  end
  puts response.body
end
