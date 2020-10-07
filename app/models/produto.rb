class Produto
  include Mongoid::Document
  field :SKU, type: String
  field :Nome, type: String
  field :Descricao, type: String
  field :Quantidade, type: Integer
  field :Preco, type: Float
  field :Barras, type: String

  validates :SKU, format: { with: /\A[a-zA-Z0-9'-]*\z/,
    message: "apenas alphanumerico ou hifen" }
  validates :Nome, presence: true
  validates :Preco, numericality: { greater_than: 0 }
  validates :Barras, length: { minimum: 8 }
  validates :Barras, length: { maximum: 13 }
end
