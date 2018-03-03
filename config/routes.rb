Rails.application.routes.draw do
  root 'headline#scraping'
  #get
  get 'headline/scraping'
  get 'headline/update'
  #post
  post 'headline/scraping'
  post 'headline/update'
end
