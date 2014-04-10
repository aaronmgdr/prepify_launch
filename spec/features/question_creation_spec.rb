require 'spec_helper'

feature "Question Creation" do
  background do
    @lesson = Lesson.create(name: "Basket Weaving", intro: "You will be an expert", conclusion: "This is the end", video_url: "video")
  end

  scenario "Creating a question incorrectly" do
    visit new_lesson_question_path(@lesson)
    within('#new_question') do
      fill_in "Description", :with => "Solve for x"
      fill_in "Equation", :with => "x = 1 + 1"
      fill_in "Level", :with => "1"
    end
    click_button "Submit"
    expect(page).to have_content "Solve for x"
  end



end
