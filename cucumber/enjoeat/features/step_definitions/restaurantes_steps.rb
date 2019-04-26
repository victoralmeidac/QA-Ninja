Dado("que temos os seguintes restaurantes") do |table|
  @restaurant_data = table.hashes
end

Quando("acesso a lista de restaurantes") do
  visit '/restaurants'
 end

Então("devo ver todos os restaurantes desta lista") do
  restaurants = all('.place-info-box')

  @restaurant_data.each_with_index do |value, index|
    expect(restaurants[index]).to have_text value['nome'].upcase
    expect(restaurants[index]).to have_text value['categoria']
    expect(restaurants[index]).to have_text value['entrega']
    expect(restaurants[index]).to have_text value['avaliacao']
  end

end


#Esquema do cenario
#  Então("cada restaurante deve ter {int} {string} {string} {string} {float}") do |id, name, category, delivery_time, rating|
#   restaurants = all('.place-info-box')
    
#     expect(restaurants[id]).to have_text name.upcase
#     expect(restaurants[id]).to have_text category
#     expect(restaurants[id]).to have_text delivery_time
#     expect(restaurants[id]).to have_text rating

#     sleep 2
# end