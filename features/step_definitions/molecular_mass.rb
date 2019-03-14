require 'watir-webdriver'
require 'watir'
require 'rspec/expectations'
require 'pry'

Given("Mason enters {string} into the molecular mass field") do |string|
  @browser ||= Watir::Browser.new
  @browser.goto 'https://awesome-periodic-table.firebaseapp.com/'
  @browser.text_field(id: 'molecule_input').set 'C6H12O6'
end

When("He clicks {string}") do |string|
  @browser.button(id: 'mass-btn').click
end

Then("He should see {string}") do |string|
  expect(@browser.p(id: 'mmcalc_mass').inner_html).to eq("Has a mass of 180.156 grams")
end
