task :check => :environment do 
    req = HTTP.get("https://api.etherscan.io/api?module=account&action=txlist&address=0x55e0F7A3bB39a28Bd7Bcc458e04b3cF00Ad3219E&startblock=0&endblock=99999999&page=1&offset=25&sort=desc&apikey=DFNQUZSAYHDACKWVQASQF9FM8B8MG3R31Q")
    data = JSON.parse(req.to_s)
    puts data
    data['result'].each do |tx|
    	puts tx['hash']
    	puts "^hash"
    	puts tx['input']
    	puts 'input'
    	if tx['input'] == "0xf25efffc"
    		if Newauc.where(hashaddy: tx['hash']).exists?
    			puts "exists"
    		else
    		 	puts "an auction has begun"
    		 	zeetime = Time.at(tx["timeStamp"].to_i).to_datetime 
    		 	nowtime = DateTime.now
    		 	wawa = nowtime - zeetime
    		 	minago = ((wawa)* 24 * 60).to_i
    		 	varr = {:text => "Woot! @LilNounsDao launched a new auction " + minago.to_s + " minutes ago! Hurry, they end every 15 minutes. See the auction: https://lilnouns.wtf/ \r\n \r\n #NFTs #DAOs #web3 #crypto #blockchain #NFT"}
    		 	carr = varr.to_json
    		 	tweet = HTTP.headers("Content-Type"=>"application/json").auth('OAuth oauth_consumer_key="RHYYa8fa2l6F99ZY5zsYNPBaw",oauth_token="1461034581407285254-RN8cKOjyt2A7pnHtdjUCDu9bqOJAXQ",oauth_signature_method="HMAC-SHA1",oauth_timestamp="1652705981",oauth_nonce="zfbXnmV1h39",oauth_version="1.0",oauth_signature="0%2FZ%2FoX5P7NRCaCn48wwsb0PNpaw%3D" ').post("https://api.twitter.com/2/tweets", :body => carr)
    			resp = JSON.parse(tweet.to_s)
    			puts resp
    			Newauc.create(hashaddy: tx['hash'])
    			sleep(5)
    		end
    	end
    end
    puts "I am asleep"
    sleep(300)
    puts "I am awakes"
    req = HTTP.get("https://api.etherscan.io/api?module=account&action=txlist&address=0x55e0F7A3bB39a28Bd7Bcc458e04b3cF00Ad3219E&startblock=0&endblock=99999999&page=1&offset=10&sort=desc&apikey=DFNQUZSAYHDACKWVQASQF9FM8B8MG3R31Q")
    data = JSON.parse(req.to_s)
    puts data
    data['result'].each do |tx|
    	puts tx['hash']
    	puts "^hash"
    	puts tx['input']
    	puts 'input'
    	if tx['input'] == "0xf25efffc"
    		if Newauc.where(hashaddy: tx['hash']).exists?
    			puts "exists"
    		else
    		 	puts "an auction has begun"
    		 	zeetime = Time.at(tx["timeStamp"].to_i).to_datetime 
    		 	nowtime = DateTime.now
    		 	wawa = nowtime - zeetime
    		 	minago = ((wawa)* 24 * 60).to_i
    		 	varr = {:text => "Woot! @LilNounsDao launched a new auction " + minago.to_s + " minutes ago! Hurry, they end every 15 minutes. See the auction: https://lilnouns.wtf/ \r\n \r\n #NFTs #DAOs #web3 #crypto #blockchain #NFT"}
    		 	carr = varr.to_json
    		 	tweet = HTTP.headers("Content-Type"=>"application/json").auth('OAuth oauth_consumer_key="RHYYa8fa2l6F99ZY5zsYNPBaw",oauth_token="1461034581407285254-RN8cKOjyt2A7pnHtdjUCDu9bqOJAXQ",oauth_signature_method="HMAC-SHA1",oauth_timestamp="1652705981",oauth_nonce="zfbXnmV1h39",oauth_version="1.0",oauth_signature="0%2FZ%2FoX5P7NRCaCn48wwsb0PNpaw%3D" ').post("https://api.twitter.com/2/tweets", :body => carr)
    			resp = JSON.parse(tweet.to_s)
    			puts resp
    			Newauc.create(hashaddy: tx['hash'])
    			sleep(5)
    		end
    	end
    end
end