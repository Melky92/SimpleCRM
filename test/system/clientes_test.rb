require "application_system_test_case"

class ClientesTest < ApplicationSystemTestCase
  setup do
    @cliente = clientes(:one)
  end

  test "visiting the index" do
    visit clientes_url
    assert_selector "h1", text: "Clientes"
  end

  test "creating a Cliente" do
    visit clientes_url
    click_on "Nuevo Cliente"

    fill_in "Comentarios", with: @cliente.comentarios
    fill_in "Nombre", with: @cliente.nombre
    fill_in "Telefono", with: @cliente.telefono
    fill_in "Usuario", with: @cliente.usuario_id
    click_on "Nuevo Cliente"

    assert_text "Cliente was successfully created"
    click_on "Volver"
  end

  test "updating a Cliente" do
    visit clientes_url
    click_on "Editar", match: :first

    fill_in "Comentarios", with: @cliente.comentarios
    fill_in "Nombre", with: @cliente.nombre
    fill_in "Telefono", with: @cliente.telefono
    fill_in "Usuario", with: @cliente.usuario_id
    click_on "Update Cliente"

    assert_text "Cliente was successfully updated"
    click_on "Volver"
  end

  test "destroying a Cliente" do
    visit clientes_url
    page.accept_confirm do
      click_on "Eliminar", match: :first
    end

    assert_text "Cliente was successfully destroyed"
  end
end
