require 'test_helper'

class CoordinatorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coordinator = coordinators(:one)
  end

  test "should get index" do
    get coordinators_url
    assert_response :success
  end

  test "should get new" do
    get new_coordinator_url
    assert_response :success
  end

  test "should create coordinator" do
    assert_difference('Coordinator.count') do
      post coordinators_url, params: { coordinator: { course_id: @coordinator.course_id, matricula: @coordinator.matricula, nome: @coordinator.nome, senha: @coordinator.senha } }
    end

    assert_redirected_to coordinator_url(Coordinator.last)
  end

  test "should show coordinator" do
    get coordinator_url(@coordinator)
    assert_response :success
  end

  test "should get edit" do
    get edit_coordinator_url(@coordinator)
    assert_response :success
  end

  test "should update coordinator" do
    patch coordinator_url(@coordinator), params: { coordinator: { course_id: @coordinator.course_id, matricula: @coordinator.matricula, nome: @coordinator.nome, senha: @coordinator.senha } }
    assert_redirected_to coordinator_url(@coordinator)
  end

  test "should destroy coordinator" do
    assert_difference('Coordinator.count', -1) do
      delete coordinator_url(@coordinator)
    end

    assert_redirected_to coordinators_url
  end
end
