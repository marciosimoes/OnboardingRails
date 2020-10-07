json.extract! produto, :id, :SKU, :Nome, :Descricao, :Quantidade, :Preco, :Barras, :created_at, :updated_at
json.url produto_url(produto, format: :json)
