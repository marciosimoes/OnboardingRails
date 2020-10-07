class ReportController < ApplicationController
  require 'csv'
  require 'time'

  def index
    @records = Dir.glob("public/uploads/reports/*.csv")
  end

  def export
    @produtos = Produto.all
    header = ["sku","nome","descricao","quantidade","preco","codigo de barras"]
    time = Time.now
    file = "public/uploads/reports/produtos_#{time}.csv"
    CSV.open(file, "wb") do |csv|
      csv << header
      @produtos.each do |c|
        csv << [c.SKU, c.Nome, c.Descricao, c.Quantidade, c.Preco, c.Barras]
        # How puts line break here
      end
    end
    @file = file
  end
end
