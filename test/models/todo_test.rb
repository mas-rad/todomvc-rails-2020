require 'test_helper'

class TodoTest < ActiveSupport::TestCase
  test "validates presence of title" do
    todo = Todo.new(title: '')
    refute todo.valid?
    assert_includes todo.errors.details[:title], error: :blank
  end

  test "strips title on assertion" do
    todo = Todo.new(title: "\t\n Learn Rails \x00\v\f\r ")
    assert_equal 'Learn Rails', todo.title
  end

  test "toggle all todos" do
    assert_difference('Todo.completed.count', 2) do
      Todo.toggle_all!
    end
    assert_difference('Todo.completed.count', -3) do
      Todo.toggle_all!
    end
    assert_difference('Todo.completed.count', 3) do
      Todo.toggle_all!
    end
  end
end
