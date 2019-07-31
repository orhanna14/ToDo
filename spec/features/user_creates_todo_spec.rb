require "rails_helper"

feature "Creates a Todo item" do 
  scenario "successfully" do
    sign_in

    create_todo "Buy milk"
    
    expect(page).not_to display_todo "Buy milk"
  end
  
end