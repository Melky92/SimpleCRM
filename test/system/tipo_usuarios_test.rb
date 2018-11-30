require "application_system_test_case"

class TipoUsuariosTest < ApplicationSystemTestCase
  setup do
    @tipo_usuario = tipo_usuarios(:one)
  end

  test "visiting the index" do
    visit tipo_usuarios_url
    assert_selector "h1", text: "Tipo Usuarios"
  end

  test "creating a Tipo usuario" do
    visit tipo_usuarios_url
    click_on "Nuevo Tipo Usuario"

    fill_in "Tipo", with: @tipo_usuario.tipo
    click_on "Create Tipo usuario"

    assert_text "Tipo usuario was successfully created"
    click_on "Volver"
  end

  test "updating a Tipo usuario" do
    visit tipo_usuarios_url
    click_on "Editar", match: :first

    fill_in "Tipo", with: @tipo_usuario.tipo
    click_on "Update Tipo usuario"

    assert_text "Tipo usuario was successfully updated"
    click_on "Volver"
  end

  test "destroying a Tipo usuario" do
    visit tipo_usuarios_url
    page.accept_confirm do
      click_on "Eliminar", match: :first
    end

    assert_text "Tipo usuario was successfully destroyed"
  end
end
