task :check => :environment do 
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
    		 	tweet = HTTP.headers("Content-Type"=>"application/json").auth('OAuth oauth_consumer_key="TiWOmWL4yfSMvIv0EhzJFx0rv",oauth_token="1461034581407285254-RN8cKOjyt2A7pnHtdjUCDu9bqOJAXQ",oauth_signature_method="HMAC-SHA1",oauth_timestamp="1652370692",oauth_nonce="7MgT2MMa5vS",oauth_version="1.0",oauth_signature="RWUGhdUSEjm1koD%2BizCeldEH%2Fxg%3D"').post("https://api.twitter.com/2/tweets", :body => '{"text": "@LilNounsDao launched a new auction! Hurry, they end every 15 minutes. See the auction: https://lilnouns.wtf/ \r\n \r\n #NFTs #DAOs #web3 #crypto #blockchain #NFT"}')
    			Newauc.create(hashaddy: tx['hash'])
    		end
    	end
    end
    sleep(300)
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
    		 	tweet = HTTP.headers("Content-Type"=>"application/json").auth('OAuth oauth_consumer_key="TiWOmWL4yfSMvIv0EhzJFx0rv",oauth_token="1461034581407285254-RN8cKOjyt2A7pnHtdjUCDu9bqOJAXQ",oauth_signature_method="HMAC-SHA1",oauth_timestamp="1652370692",oauth_nonce="7MgT2MMa5vS",oauth_version="1.0",oauth_signature="RWUGhdUSEjm1koD%2BizCeldEH%2Fxg%3D"').post("https://api.twitter.com/2/tweets", :body => '{"text": "@LilNounsDao launched a new auction! Hurry, they end every 15 minutes. See the auction: https://lilnouns.wtf/ \r\n \r\n #NFTs #DAOs #web3 #crypto #blockchain #NFT"}')
    			Newauc.create(hashaddy: tx['hash'])
    		end
    	end
    end
end