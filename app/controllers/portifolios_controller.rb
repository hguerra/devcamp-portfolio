class PortifoliosController < ApplicationController
  def index
    @portfolio_items = Portifolio.all
  end
end
