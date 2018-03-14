# scraping_app
It is rails sample application for scraping articles.

## Overview
This application uses the technology called Web scraping.   
Web scraping can extract and process information on web pages.   
I created the sample to efficiently and easily browse articles of a specific page.  
You can check with the sample below.

## Description
- It is convenient when you want to read articles of a specific page easily.
- Because it corresponds to responsive, it can also browse with PC, tablet, smartphone.
- Depending on customization, various information can be acquired and displayed.

## Sample
Scrapp : https://scr-app.herokuapp.com/

## Improvement
- Depending on the website, information may not be extracted.
- Since there is no registration screen of the Web site to be extracted, it is necessary to make a registration screen,  
or check the link of the article part from the source of the Web site and write it in the processing part.

## Dependency
- Ruby 2.4.3

- Rails 5.1.5

- Mechanize : Mechanize is a gem for scraping.
  
- Bootstrap 4 :Bootstrap is a design template.

## Usage
1.Install rails and Mechanize and bundle install.

2.Write URL and link of web site you want to extract to controller.  
- \app\controllers\eadline_controller.rb

3.Correct the following view files.  
- \app\views\shared\_article.html.erb  
- \app\views\shared\_menul.erb  

## Author
tetz-m

## License
[MIT](https://opensource.org/licenses/mit-license.php)
