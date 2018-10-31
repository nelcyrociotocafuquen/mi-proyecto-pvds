require "application_system_test_case"

class AdministradorsTest < ApplicationSystemTestCase
  setup do
    @administrador = administradors(:one)
  end

  test "visiting the index" do
    visit administradors_url
    assert_selector "h1", text: "Administradors"
  end

  test "creating a Administrador" do
    visit administradors_url
    click_on "New Administrador"

    fill_in "Cedula", with: @administrador.cedula
    fill_in "Nombre", with: @administrador.nombre
    fill_in "Puntos", with: @administrador.puntos_id
    click_on "Create Administrador"

    assert_text "Administrador was successfully created"
    click_on "Back"
  end

  test "updating a Administrador" do
    visit administradors_url
    click_on "Edit", match: :first

    fill_in "Cedula", with: @administrador.cedula
    fill_in "Nombre", with: @administrador.nombre
    fill_in "Puntos", with: @administrador.puntos_id
    click_on "Update Administrador"

    assert_text "Administrador was successfully updated"
    click_on "Back"
  end

  test "destroying a Administrador" do
    visit administradors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Administrador was successfully destroyed"
  end
end