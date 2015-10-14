require 'rails_helper'

describe "Static pages" do

  #Название экнеша может быть любым например: describe "Тестируем первую страницу" do
  describe 'Главная страница' do

    it "должна иметь текст 'Sample App'" do

      #visit - аналог открытие страницы браузером, гем Capybara
      visit '/static_pages/home'
      expect(page).to have_content("Sample App")
    end

    #проверяем наличие тайтла
    it "should have the right title" do
      visit '/static_pages/home'
      expect(page).to have_title("Ruby on Rails Tutorial Sample App | Home")
    end

  end


  describe 'Страница помощи' do

    it "должна иметь текст 'Help'" do

      #visit - аналог открытие страницы браузером, гем Capybara
      visit '/static_pages/help'
      expect(page).to have_content("Help")
    end

    #проверяем наличие тайтла
    it "should have the right title" do
      visit '/static_pages/help'
      expect(page).to have_title("Help")
    end
  end

  describe "About page" do

    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    #проверяем наличие тайтла
    it "should have the right title" do
      visit '/static_pages/about'
      expect(page).to have_title("About Us")
    end

  end



end