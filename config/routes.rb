Rails.application.routes.draw do
  root 'headline#scraping'
  #get
  get 'headline/scraping'
  #post
  post '/' => 'headline#scraping'
end
