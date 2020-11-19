require "application_system_test_case"

class TodosTest < ApplicationSystemTestCase
  def todos_title
    all('ul.todo-list label').map(&:text)
  end

  test "visiting the index" do
    visit root_url

    assert_selector 'h1', text: 'todos'
    assert_equal [
      'Install Ruby',
      'Learn Rails',
      'Learn Stimulus JS'
    ], todos_title
  end

  test "creating a Todo" do
    visit root_url

    fill_in 'todo_title', with: 'Learn Rails test'
    find('#todo_title').native.send_keys(:return)

    assert_selector 'label', text: 'Learn Rails test'
    assert_equal [
      'Install Ruby',
      'Learn Rails',
      'Learn Stimulus JS',
      'Learn Rails test'
    ], todos_title
  end

  # test "updating a Todo" do
  #   visit root_url
  #   click_on "Edit", match: :first

  #   within 'section.main' do
  #     check "Completed" if @todo.completed
  #     fill_in "Title", with: @todo.title
  #     click_on "Update Todo"
  #   end

  #   assert_text "Todo was successfully updated"
  # end

  # test "destroying a Todo" do
  #   visit root_url
  #   page.accept_confirm do
  #     click_on "Destroy", match: :first
  #   end

  #   assert_text "Todo was successfully destroyed"
  # end
end
