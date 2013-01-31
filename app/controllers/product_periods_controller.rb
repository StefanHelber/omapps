class ProductPeriodsController < ApplicationController
  respond_to :html, :json
  before_filter :signed_in_user
  # GET /product_periods
  # GET /product_periods.json
  def index
    @product_periods = ProductPeriod.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @product_periods }
    end
  end

  # GET /product_periods/1
  # GET /product_periods/1.json
  def show
    @product_period = ProductPeriod.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product_period }
    end
  end

  # GET /product_periods/new
  # GET /product_periods/new.json
  def new
    @product_period = ProductPeriod.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product_period }
    end
  end

  # GET /product_periods/1/edit
  def edit
    @product_period = ProductPeriod.find(params[:id])
  end

  # POST /product_periods
  # POST /product_periods.json
  def create
    @product_period = ProductPeriod.new(params[:product_period])

    respond_to do |format|
      if @product_period.save
        format.html { redirect_to @product_period, notice: 'Produkt wurde erfolgreich angelegt!' }
        format.json { render json: @product_period, status: :created, location: @product_period }
      else
        format.html { render action: "new" }
        format.json { render json: @product_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /product_periods/1
  # PUT /product_periods/1.json
  def update
    @product_period = ProductPeriod.find(params[:id])

    respond_to do |format|
      if @product_period.update_attributes(params[:product_period])
        format.html { redirect_to @product_period, notice: 'Produkt   wurde erfolgreich aktualisiert.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product_period.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_periods/1
  # DELETE /product_periods/1.json
  def destroy
    @product_period = ProductPeriod.find(params[:id])
    @product_period.destroy

    respond_to do |format|
      format.html { redirect_to product_periods_url }
      format.json { head :no_content }
    end
  end
end


private

  def signed_in_user
    unless signed_in?
      store_location
      redirect_to signin_path, notice: "Bitte melden Sie sich an."
    end
  end