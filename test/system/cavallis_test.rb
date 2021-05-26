require "application_system_test_case"

class CavallisTest < ApplicationSystemTestCase
  setup do
    @cavalli = cavallis(:one)
  end

  test "visiting the index" do
    visit cavallis_url
    assert_selector "h1", text: "Cavallis"
  end

  test "creating a Cavalli" do
    visit cavallis_url
    click_on "New Cavalli"

    fill_in "Descrizione", with: @cavalli.descrizione
    fill_in "Età", with: @cavalli.età
    fill_in "Nome", with: @cavalli.nome
    click_on "Create Cavalli"

    assert_text "Cavalli was successfully created"
    click_on "Back"
  end

  test "updating a Cavalli" do
    visit cavallis_url
    click_on "Edit", match: :first

    fill_in "Descrizione", with: @cavalli.descrizione
    fill_in "Età", with: @cavalli.età
    fill_in "Nome", with: @cavalli.nome
    click_on "Update Cavalli"

    assert_text "Cavalli was successfully updated"
    click_on "Back"
  end

  test "destroying a Cavalli" do
    visit cavallis_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cavalli was successfully destroyed"
  end
end
