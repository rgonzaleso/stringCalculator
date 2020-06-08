
Given("Inicio la aplicacion del anfitrion") do
    visit '/'
  end
  
  When("Ingreso {string} como nombre") do |string|
    fill_in("nombre", :with => string)
  end
  
  When("Hago clic en Bienvenido") do
    click_button("Bienvenido")
  end

  When("Selecciono {string} en el idioma") do |string|
    select(string,:from => "idioma")
  end
  
  Then("Debe decirme {string}") do |string|
    expect(page.body).to match /#{string}/m
  end

  