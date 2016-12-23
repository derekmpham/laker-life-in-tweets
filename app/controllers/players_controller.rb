# Show current laker players' tweets
get '/players' do
  @player_tweets = $client.home_timeline
  erb :'players/index'
end
