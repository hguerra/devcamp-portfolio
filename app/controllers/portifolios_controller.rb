class PortifoliosController < ApplicationController
  def index
    @portfolio_items = Portifolio.all
  end

  def new
    @portfolio_item = Portifolio.new
  end

  def create
    @portfolio_item = Portifolio.new(params.require(:portifolio).permit(:title, :subtitle, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portifolios_path, notice: 'Portfolio was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end
end
