
Given("Inicio el juego con palabra secreta iniciada") do
  visit '/'
end

When("Ingreso {string} como palabra a adivinar") do |string|
  fill_in("palabra", :with => string)
  click_button("Adivinar")
end

Then("Debe decirme {string}") do |string|
  expect(page.body).to match /#{string}/m
end