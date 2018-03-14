# scraping_app
It is rails sample application for scraping articles.

## Overview
This application uses the technology called Web scraping.   
Web scraping can extract and process information on web pages.   
I created the sample to efficiently and easily browse articles of a specific page.  
You can check with the sample below.

## Description
- It is easy to read because it is displayed briefly on the TOP page. Also, it saves you the trouble of visiting multiple sites.  
- Because it corresponds to responsive web design, it can also browse with PC, tablet and smartphone.
- By customizing, you can extract and display your favorite information.

## Sample
Scrapp : https://scr-app.herokuapp.com/

## Improvement
- There are sites that can not extract information well because it is a sample. Since there is an extraction method by XPath etc, consideration is necessary.
- Since we do not make a registration screen (screen to register the site to extract), we need to make it if necessary.  
- As the number of sites and articles to be registered increases, it takes time to draw the screen, so speed improvement is necessary.

## Dependency
- Ruby 2.4.3

- Rails 5.1.5

- [Mechanize](https://github.com/sparklemotion/mechanize)
  
- [Bootstrap 4](https://getbootstrap.com/)

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
