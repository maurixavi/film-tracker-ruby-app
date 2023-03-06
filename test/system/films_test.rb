require "application_system_test_case"

class FilmsTest < ApplicationSystemTestCase
  setup do
    @film = films(:one)
  end

  test "visiting the index" do
    visit films_url
    assert_selector "h1", text: "Films"
  end

  test "creating a Film" do
    visit films_url
    click_on "New Film"

    fill_in "1.5", with: @film.1.5
    fill_in "10}", with: @film.10}
    fill_in "2", with: @film.2
    fill_in "2.5", with: @film.2.5
    fill_in "3", with: @film.3
    fill_in "3.5", with: @film.3.5
    fill_in "4", with: @film.4
    fill_in "4.5", with: @film.4.5
    fill_in "5", with: @film.5
    fill_in "5.5", with: @film.5.5
    fill_in "6", with: @film.6
    fill_in "6.5", with: @film.6.5
    fill_in "7", with: @film.7
    fill_in "7.5", with: @film.7.5
    fill_in "8", with: @film.8
    fill_in "8.5", with: @film.8.5
    fill_in "9", with: @film.9
    fill_in "9.5", with: @film.9.5
    fill_in "Country", with: @film.country
    fill_in "Description", with: @film.description
    fill_in "Director", with: @film.director
    fill_in "Duration", with: @film.duration
    fill_in "Genre", with: @film.genre
    fill_in "My rating", with: @film.my_rating
    fill_in "Title", with: @film.title
    fill_in "Watched", with: @film.watched
    fill_in "Year", with: @film.year
    click_on "Create Film"

    assert_text "Film was successfully created"
    click_on "Back"
  end

  test "updating a Film" do
    visit films_url
    click_on "Edit", match: :first

    fill_in "1.5", with: @film.1.5
    fill_in "10}", with: @film.10}
    fill_in "2", with: @film.2
    fill_in "2.5", with: @film.2.5
    fill_in "3", with: @film.3
    fill_in "3.5", with: @film.3.5
    fill_in "4", with: @film.4
    fill_in "4.5", with: @film.4.5
    fill_in "5", with: @film.5
    fill_in "5.5", with: @film.5.5
    fill_in "6", with: @film.6
    fill_in "6.5", with: @film.6.5
    fill_in "7", with: @film.7
    fill_in "7.5", with: @film.7.5
    fill_in "8", with: @film.8
    fill_in "8.5", with: @film.8.5
    fill_in "9", with: @film.9
    fill_in "9.5", with: @film.9.5
    fill_in "Country", with: @film.country
    fill_in "Description", with: @film.description
    fill_in "Director", with: @film.director
    fill_in "Duration", with: @film.duration
    fill_in "Genre", with: @film.genre
    fill_in "My rating", with: @film.my_rating
    fill_in "Title", with: @film.title
    fill_in "Watched", with: @film.watched
    fill_in "Year", with: @film.year
    click_on "Update Film"

    assert_text "Film was successfully updated"
    click_on "Back"
  end

  test "destroying a Film" do
    visit films_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Film was successfully destroyed"
  end
end
