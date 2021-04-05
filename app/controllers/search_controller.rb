class SearchController < ApplicationController
  def index
    response = Faraday.get("https://last-airbender-api.herokuapp.com/api/v1/characters?affiliation=Fire+Nation")
    json = JSON.parse(response.body, symbolize_names: true)
    count = json[0].map do |character|
      character
    end

  end
end