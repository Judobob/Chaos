class Webscrape < ActiveRecord::Base
  
  def search_result
    agent = Mechanize.new
    page = agent.get('http://www.thesaurus.com/')
    google_form = page.form()
    google_form.q = 'hello'
    page2 = agent.submit(google_form).search(".antonyms span.text")
    puts page2.first
  end
end
