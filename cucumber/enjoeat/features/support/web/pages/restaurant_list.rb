class RestaurantListPage
    include Capybara::DSL

    def load
        visit '/restaurants'
    end

    def go(restaurante)
        find(".place-info-box", text: restaurante.upcase).click
    end

    def list
        all('.place-info-box')
    end
end