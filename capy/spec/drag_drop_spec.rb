

describe 'Drag and Drop', :dd do

    before(:each) do
        visit '/drag_and_drop'
    end

    it 'homem aranha pertence ao time do stark' do

        stark = find('.team-stark .column')
        spider = find('img[alt*="Aranha"]')
        cap = find('.team-cap .column')


        spider.drag_to stark

        expect(stark).to have_css 'img[alt*="Aranha"]'
        expect(cap).not_to have_css 'img[alt*="Aranha"]'

        spider.drag_to cap
        
        expect(stark).not_to have_css 'img[alt*="Aranha"]'
        expect(cap).to have_css 'img[alt*="Aranha"]'

        sleep 5
    end
end