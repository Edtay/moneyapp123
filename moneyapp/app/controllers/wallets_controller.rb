class WalletsController < ApplicationController
  # GET /wallets
  # GET /wallets.json
  def index
    @wallets = Wallet.all
    gon.wallets_names = Wallet.all.map &:name
    gon.wallets_values = Wallet.all.map &:value
    gon.wallets_reasons = Wallet.all.map &:reason
    gon.wallets_decp = Wallet.all.map &:decp
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @wallets }
    end
  end

  # GET /wallets/1
  # GET /wallets/1.json
  def show
    @wallet = Wallet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @wallet }
    end
  end

  # GET /wallets/new
  # GET /wallets/new.json
  def new
    @wallet = Wallet.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @wallet }
    end
  end

  # GET /wallets/1/edit
  def edit
    @wallet = Wallet.find(params[:id])
  end

  # POST /wallets
  # POST /wallets.json
  def create
    @wallet = Wallet.new(params[:wallet])

    respond_to do |format|
      if @wallet.save
        format.html { redirect_to wallets_path, notice: 'Wallet was successfully created.' }
        format.json { render json: @wallet, status: :created, location: @wallet }
      else
        format.html { render action: "new" }
        format.json { render json: @wallet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /wallets/1
  # PUT /wallets/1.json
  def update
    @wallet = Wallet.find(params[:id])

    respond_to do |format|
      if @wallet.update_attributes(params[:wallet])
        format.html { redirect_to @wallet, notice: 'Wallet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @wallet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wallets/1
  # DELETE /wallets/1.json
  def destroy
    @wallet = Wallet.find(params[:id])
    @wallet.destroy

    respond_to do |format|
      format.html { redirect_to wallets_url }
      format.json { head :no_content }
    end
  end
end
