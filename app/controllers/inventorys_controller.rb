class InventorysController < ApplicationController

def show
    @inventory=Inventory.find(params[:id])
  end

  def index
    # 項目を全件取得
    @inventorys = Inventory.all

    # 最低在庫数を下回っているものだけ出力
    # @inventorys = Inventory.where("stock < ?", :required)
    # @inventory=Inventory.new
  end

  

  def new
    # 新規データ登録用のinventoryインスタンスをモデルから作成
    # 空のモデルを生成
    @inventory=Inventory.new
  end

  def create
    inventory = Inventory.new(inventory_params)
    inventory.save
    # 処理後のリダイレクト先→new画面
    redirect_to action: "new"
  end

  def edit
    @inventory=Inventory.find(params[:id])
  end

  def update
    inventory=Inventory.find(params[:id])
    inventory.update(inventory_params)
    redirect_to inventory_path(inventory)
  end

  def destroy
    inventory=Inventory.find(params[:id])
    inventory.destroy
    redirect_to inventorys_path
  end

  def list
    # 場所ごとに項目を全件取得
    @inventorys = Inventory.where(space: params[:space])
  end

  def menu
    @inventorys = Inventory.all

  end

  def place
  end

private
  def inventory_params
    params.require(:inventory).permit(:item, :space, :stock, :required)
    # item:項目名、space:保管場所、stock:在庫数、required:最低在庫数
  end

end
