html = Nokogiri.HTML(content)
status = html.css('#vi-itm-cond').text

outputs << {
    "_collection": "products",
    status:status,
    name: pages['vars']['name'],
    price: pages['vars']['price']
}