require 'rubygems'
require 'httparty'

class LoLStat
  include HTTParty

def summoner_id(name)
    url = "https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/" + name + "/?api_key=295a459d-262b-4afc-9606-ba87fec4a543"
    @response = HTTParty.get(URI.encode(url))
    no_space_name = name.delete " "
    no_space_lowercase_name = no_space_name.downcase
    @json =  JSON.parse(@response.body)[no_space_lowercase_name]["id"]
    return @json
  end

  def match_history(id)
    url = "https://na.api.pvp.net/api/lol/na/v2.2/matchhistory/"+id.to_s+"?api_key=295a459d-262b-4afc-9606-ba87fec4a543"
    @response = HTTParty.get(URI.encode(url))
    @json =  JSON.parse(@response.body)["matches"]
    return @json
  end
end
