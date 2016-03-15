#first we call rails helper
require 'rails_helper'

# The methods used here are from Capybara and RSpec

#We need to create a feature using Rspec for our application. 
#This feature will be "Creating article"
RSpec.feature "Creating Articles" do 
  #There is a scenario should be followed to use this feature. Here how it is:
  #The scenarion demonstrates a user creates an article
  scenario "A user creates a new article" do
    #First, the user will visit a URL
    visit "/"
    #Second, he will click on a link
    click_link "New Article"
    #Third, he will fill a textbox of article's title with a title
    fill_in "Title", with: "Create first article"
    #Fourth, he will fill a textbox of article's body with something
    fill_in "Body", with: "Lorem Ipsum"
    #Fifth, he will submit the article by clicking on submit button
    click_button "Create Article"
    #Sixth, he will expect to get a feedback message that the article is created successfully
    expect(page).to have_content("Article has been created")
    #Seventh, he will expect to be redirected to the article's path he created 
    expect(page.current_path).to eq(articles_path)
    
  end
end


