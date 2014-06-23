#!/usr/bin/env ruby

require 'open-uri'
require 'json'
require './fetcher.rb'
require './html_builder.rb'
require './html_writer.rb'

# temporary token
ACCESS_TOKEN = 'CAACEdEose0cBALbWhySNETZBsxVSXKFZBYsDoNjIm6xDBjJTGmO2xQKbI2zbO0Pds8Gzu9B2qVokH1J57jCcFQDZCZCnpHmJU2Ev3jVWOFSXvglCvdS2e862nR11DAZB2gZABiZAIZC4P9E9SBtbwclUVUyJqJu0L70OI7akS4MHy9KZCQL2cw7QkqMST7dOBCVgZD'

PAGES = [
  "https://www.facebook.com/HumansofRiodeJaneiro",
  "https://www.facebook.com/humansofspain",
  "https://www.facebook.com/HumansOfRome",
  "https://www.facebook.com/humansbuenosaires",
  "https://www.facebook.com/praguehumans",
  "https://www.facebook.com/HumansUtrecht",
  "https://www.facebook.com/pages/Humans-of-Amsterdam/406776679369875",
  "https://www.facebook.com/berlinhumans",
  "https://www.facebook.com/soulsofsanfrancisco",
  "https://www.facebook.com/humansofnewyork",
  "https://www.facebook.com/pages/Humans-of-Bombay/188056068070045",
  "https://www.facebook.com/HumansOfIndia",
  "https://www.facebook.com/humansofchina",
  "https://www.facebook.com/HOPAIP",
  "https://www.facebook.com/HumansOfLosAngelesHOLA",
  "https://www.facebook.com/HumansOfTelAviv",
  "https://www.facebook.com/Humanssheljerusalem",
  "https://www.facebook.com/HumansOfLondon",
  "https://www.facebook.com/HumansOfCopenhagen",
  "https://www.facebook.com/OfficialHumansofChicago",
]

posts = PAGES.map do |page_url|
  fetcher = Fetcher.new(page_url)
  posts_json = fetcher.posts_json
end

posts.flatten!

all_html = posts.map do |post|
  HTMLBuilder.build_embed_html(post['link'])
end

HTMLWriter.write(all_html.join("\n"))