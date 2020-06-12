

Given("Inicio el juego") do
  visit '/'
end

When("Ingreso {string} como palabra secreta") do |string|
  fill_in("palabraSecreta", :with => string)
  click_button("Iniciar")
end

Given("Inicio el juego con palabra secreta iniciada") do
  visit '/jugador2'
end

When("Ingreso {string} como palabra a adivinar") do |string|
  fill_in("palabra", :with => string)
  click_button("Adivinar")
end

Then("Debe decirme {string}") do |string|
  expect(page.body).to match /#{string}/m
end


