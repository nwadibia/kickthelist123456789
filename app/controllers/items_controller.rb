class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]

<<<<<<< HEAD
  # GET /items
  # GET /items.json
=======
>>>>>>> 1b7f44ecaec92d4eab21ed476e7f548db7132621
  def index
    @items = Item.all
  end

<<<<<<< HEAD
  # GET /items/1
  # GET /items/1.json
  def show
  end

  # GET /items/new
=======
  def show
  end

>>>>>>> 1b7f44ecaec92d4eab21ed476e7f548db7132621
  def new
    @item = Item.new
  end

<<<<<<< HEAD
  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
=======
  def edit
  end

>>>>>>> 1b7f44ecaec92d4eab21ed476e7f548db7132621
  def create
    @item = Item.new(item_params)

    respond_to do |format|
      if @item.save
<<<<<<< HEAD
        format.html { redirect_to @item, notice: 'Item was successfully created.' }
=======
        format.html { redirect_to @item, notice: 'Succesfully listed a new item, youre one step closer to awesome!' }
>>>>>>> 1b7f44ecaec92d4eab21ed476e7f548db7132621
        format.json { render action: 'show', status: :created, location: @item }
      else
        format.html { render action: 'new' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
<<<<<<< HEAD
        format.html { redirect_to @item, notice: 'Item was successfully updated.' }
=======
        format.html { redirect_to @item, notice: 'Successfully updated.' }
>>>>>>> 1b7f44ecaec92d4eab21ed476e7f548db7132621
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    respond_to do |format|
      format.html { redirect_to items_url }
      format.json { head :no_content }
    end
  end

<<<<<<< HEAD
=======


>>>>>>> 1b7f44ecaec92d4eab21ed476e7f548db7132621
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:description)
    end
end
