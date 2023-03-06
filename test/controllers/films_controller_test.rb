require 'test_helper'

class FilmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @film = films(:one)
  end

  test "should get index" do
    get films_url
    assert_response :success
  end

  test "should get new" do
    get new_film_url
    assert_response :success
  end

  test "should create film" do
    assert_difference('Film.count') do
      post films_url, params: { film: { 1.5: @film.1.5, 10}: @film.10}, 2: @film.2, 2.5: @film.2.5, 3: @film.3, 3.5: @film.3.5, 4: @film.4, 4.5: @film.4.5, 5: @film.5, 5.5: @film.5.5, 6: @film.6, 6.5: @film.6.5, 7: @film.7, 7.5: @film.7.5, 8: @film.8, 8.5: @film.8.5, 9: @film.9, 9.5: @film.9.5, country: @film.country, description: @film.description, director: @film.director, duration: @film.duration, genre: @film.genre, my_rating: @film.my_rating, title: @film.title, watched: @film.watched, year: @film.year } }
    end

    assert_redirected_to film_url(Film.last)
  end

  test "should show film" do
    get film_url(@film)
    assert_response :success
  end

  test "should get edit" do
    get edit_film_url(@film)
    assert_response :success
  end

  test "should update film" do
    patch film_url(@film), params: { film: { 1.5: @film.1.5, 10}: @film.10}, 2: @film.2, 2.5: @film.2.5, 3: @film.3, 3.5: @film.3.5, 4: @film.4, 4.5: @film.4.5, 5: @film.5, 5.5: @film.5.5, 6: @film.6, 6.5: @film.6.5, 7: @film.7, 7.5: @film.7.5, 8: @film.8, 8.5: @film.8.5, 9: @film.9, 9.5: @film.9.5, country: @film.country, description: @film.description, director: @film.director, duration: @film.duration, genre: @film.genre, my_rating: @film.my_rating, title: @film.title, watched: @film.watched, year: @film.year } }
    assert_redirected_to film_url(@film)
  end

  test "should destroy film" do
    assert_difference('Film.count', -1) do
      delete film_url(@film)
    end

    assert_redirected_to films_url
  end
end
