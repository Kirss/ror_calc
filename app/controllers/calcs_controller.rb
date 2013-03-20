class CalcsController < ApplicationController
  # GET /calcs
  # GET /calcs.json
  def index
    @calcs = Calc.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @calcs }
    end
  end

  # GET /calcs/1
  # GET /calcs/1.json
  def show
    @calc = Calc.find(params[:id])
    @vari = Calc.new(params[:calc])
    @result = @vari.arvuta

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @calc }
    end
  end

  # GET /calcs/new
  # GET /calcs/new.json
  def new
    @calc = Calc.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @calc }
    end
  end

  # GET /calcs/1/edit
  def edit
    @calc = Calc.find(params[:id])
  end

  # POST /calcs
  # POST /calcs.json
  def create
    @calc = Calc.new(params[:calc])

    respond_to do |format|
      if @calc.save
        format.html { redirect_to @calc, notice: 'Calc was successfully created.' }
        format.json { render json: @calc, status: :created, location: @calc }
      else
        format.html { render action: "new" }
        format.json { render json: @calc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /calcs/1
  # PUT /calcs/1.json
  def update
    @calc = Calc.find(params[:id])

    respond_to do |format|
      if @calc.update_attributes(params[:calc])
        format.html { redirect_to @calc, notice: 'Calc was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @calc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calcs/1
  # DELETE /calcs/1.json
  def destroy
    @calc = Calc.find(params[:id])
    @calc.destroy

    respond_to do |format|
      format.html { redirect_to calcs_url }
      format.json { head :no_content }
    end
  end
  
    
  
end
