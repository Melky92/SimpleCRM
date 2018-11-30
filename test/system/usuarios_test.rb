require "application_system_test_case"

class UsuariosTest < ApplicationSystemTestCase
  setup do
    @usuario = usuarios(:one)
  end

  test "visiting the index" do
    visit usuarios_url
    assert_selector "h1", text: "Usuarios"
  end

  test "creating a Usuario" do
    visit usuarios_url
    click_on "Nuevo Usuario"

    fill_in "Apellidos", with: @usuario.apellidos
    fill_in "Contrasenha", with: @usuario.contrasenha
    fill_in "Email", with: @usuario.email
    fill_in "Nombres", with: @usuario.nombres
    fill_in "Tipo Usuario", with: @usuario.tipo_usuario_id
    click_on "Create Usuario"

    assert_text "Usuario was successfully created"
    click_on "Volver"
  end

  test "updating a Usuario" do
    visit usuarios_url
    click_on "Editar", match: :first

    fill_in "Apellidos", with: @usuario.apellidos
    fill_in "Contrasenha", with: @usuario.contrasenha
    fill_in "Email", with: @usuario.email
    fill_in "Nombres", with: @usuario.nombres
    fill_in "Tipo Usuario", with: @usuario.tipo_usuario_id
    click_on "Update Usuario"

    assert_text "Usuario was successfully updated"
    click_on "Volver"
  end

  test "destroying a Usuario" do
    visit usuarios_url
    page.accept_confirm do
      click_on "Eliminar", match: :first
    end

    assert_text "Usuario was successfully destroyed"
  end
end
