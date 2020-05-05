class OrderTablesController < ApplicationController
  before_action :set_order_table, only: [:show, :edit, :update, :destroy]

  
  def index
    @order_tables = OrderTable.all
  end

  
  def show
  end

 
  def new
    @order_table = OrderTable.new
  end

 
  def edit
  end


  def create
    @order_table = OrderTable.new(order_table_params)

    respond_to do |format|
      if @order_table.save
        format.html { redirect_to @order_table, notice: 'Order table was successfully created.' }
        format.json { render :show, status: :created, location: @order_table }
      else
        format.html { render :new }
        format.json { render json: @order_table.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    respond_to do |format|
      if @order_table.update(order_table_params)
        format.html { redirect_to @order_table, notice: 'Order table was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_table }
      else
        format.html { render :edit }
        format.json { render json: @order_table.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def destroy
    @order_table.destroy
    respond_to do |format|
      format.html { redirect_to order_tables_url, notice: 'Order table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order_table
      @order_table = OrderTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_table_params
      params.require(:order_table).permit(:quantity)
    end
end
