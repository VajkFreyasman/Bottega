class PortfoliosController < ApplicationController
  def index
    @portfolio_items = Portfolio.all
  end

def angular
@angular_portfolio_items = Portfolio.angular
end


 def show
  end


  def new
  @portfolio_item = Portfolio.new
  3.times {@portfolio_item.technologies.build}
  end

def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name]))

    @portfolio_item = Portfolio.new
  end

  def show
  @portfolio_item = Portfolio.find(params[:id])
end

  def destroy
    @portfolio_item = Portfolio.find(params[:id])
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to portfolios_url, notice: 'Post Removed.' }
    end
  end


  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))


    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to portfolios_path, notice: 'Your portfolio item is now live.' }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end


  def edit
    @portfolio_item = Portfolio.find(params[:id])
  end

def update
   @portfolio_item = Portfolio.find(params[:id])

    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'Portfolio was successfully updated.' }
        
      else
        format.html { render :edit }
        
      end
    end
  end


end

  def update
    @portfolio_item = Portfolio.find(params[:id])
    
    respond_to do |format|
      if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        format.html { redirect_to portfolios_path, notice: 'The record successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end
end

