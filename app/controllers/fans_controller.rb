# Show fans' tweets
get '/fans' do
  # Create variable for each hashtag
  @lakers = $client.search("#lakers -rt").first.text
  @lakernation = $client.search("#lakernation -rt").first.text
  @lakeshow = $client.search("#lakeshow -rt").first.text
  erb :'fans/index'
end
