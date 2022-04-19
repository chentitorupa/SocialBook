require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Un usuario deberia ingresar su primer nombre" do
    # Variable que almacena una instancia de usuario
    user = User.new
    # !user.save <-- No se agrega a la base de datos el nuevo usuario
    assert !user.save
    assert !user.errors[:first_name].empty?
  end

  test "Un usuario deberia ingresar su apellido" do
    # Variable que almacena una instancia de usuario
    user = User.new
    # !user.save <-- No se agrega a la base de datos el nuevo usuario
    assert !user.save
    assert !user.errors[:last_name].empty?
  end

  test "El usuario debera ingresar su nombre de perfil" do
    # Variable que almacena una instancia de usuario
    user = User.new
    # !user.save <-- No se agrega a la base de datos el nuevo usuario
    assert !user.save
    assert !user.errors[:nickname].empty?
  end

  #test "Unique nickname" do
    # Variable que almacena una instancia de usuario
    #user = User.new
    #user.nickname = users(:oja).nickname
    #assert !user.save
    #assert !user.errors[:nickname].empty?
  #end

  test "El usuario debera ingresar su nombre de perfil con formato" do
    # Variable que almacena una instancia de usuario
    user = User.new
    user.nickname = "Mi nombre con espacios"
    # !user.save <-- No se agrega a la base de datos el nuevo usuario
    assert !user.save
    assert !user.errors[:nickname].empty?
    assert user.errors[:nickname].include?("Debe estar formateado correctamente")
  end


end
