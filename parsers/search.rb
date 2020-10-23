html = Nokogiri.HTML(content)
products = html.css('.srp-results .s-item')
products.each do |product|
    name = product.css('.s-item__title').text.strip
    price = product.css('.s-item__price').text.strip 
    url = product.css('.s-item__link').attr('href').strip
=begin
        outputs << {
            name:name,
            price:price
        }
=end
    pages << {
        url: url,
        page_type: 'product',
        vars: {
            name:name,
            price:price
        }
    }
end
