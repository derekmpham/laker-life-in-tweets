# Show fans' tweets
get '/fans' do
  # Create variable for each hashtag
  @lakers = $client.search("#lakers -rt").take(6).collect
  @lakernation = $client.search("#lakernation -rt").take(6).collect
  @lakeshow = $client.search("#lakeshow -rt").take(6).collect
  erb :'fans/index'
end
