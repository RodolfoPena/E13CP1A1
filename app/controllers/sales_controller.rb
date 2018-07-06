class SalesController < ApplicationController
  def done
    @sales = Sale.all
  end

  def new
    @sale = Sale.new
  end

  def create
    @sale = Sale.new(sale_params)
    if @sale.tax == 1
      @sale.total = (1.19)*(@sale.value - @sale.value*@sale.discount/100)
    else
      @sale.total = @sale.value - @sale.value*@sale.discount/100
    end
    @sale.save
    redirect_to sales_path
  end

  def show
    @sale = Sale.find(params[:id])
  end

  def destroy
    @sale = Sale.find(params[:id])
    @sale.destroy
    redirect_to sales_path
  end

  private
  def sale_params
    params.require(:sale).permit(:cod, :category, :detail, :value, :discount, :tax, :total)
  end
end
