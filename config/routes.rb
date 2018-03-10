Rails.application.routes.draw do
  root "headline#scraping"
  get "about" => "headline#about"
end
