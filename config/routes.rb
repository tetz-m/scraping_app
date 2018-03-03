Rails.application.routes.draw do
  get 'headline/scraping'
  root 'headline#scraping'
end
