require 'test_helper'

class TodosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @todo = todos(:one)
  end

  test "should create todo" do
    assert_difference('Todo.count') do
      post todos_url, params: { todo: { complete: @todo.complete, project_id: @todo.project_id, text: @todo.text } }, as: :json
    end

    assert_response 201
  end


  test "should update todo" do
    patch todo_url(@todo), params: { todo: { complete: @todo.complete, project_id: @todo.project_id, text: @todo.text } }, as: :json
    assert_response 200
  end

end
