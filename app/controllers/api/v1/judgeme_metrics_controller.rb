class Api::V1::JudgemeMetricsController < ApplicationController
  def index
    url = 'https://judge.me/success_stories'
    res = RestClient.get(url)
    document = Nokogiri::HTML(res.body)
    metric_string = document.search('h1')[0].text
    metrics = metric_string.gsub(/merchants can\'t be wrong/, '').to_i
    render json: metrics
  end
end
