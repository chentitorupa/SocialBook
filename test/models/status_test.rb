require 'test_helper'

class StatusTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "un estatus requiere contenido" do
    status = Status.new
    assert !status.save
    assert !status.errors[:content].empty?
  end

  test "cada status debe contener al menos 2 letras" do
    status = Status.new
    status.content = "B"
    assert !status.save
    assert !status.errors[:content].empty?
  end

  test "cada status debe tener un user_id" do
    status = Status.new
    status.content = "Hola mundo"
    assert !status.save
    assert !status.errors[:user_id].empty?
  end

end
