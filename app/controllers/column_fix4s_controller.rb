class ColumnFix4sController < ApplicationController
  before_action :set_column_fix4, only: [:show, :edit, :update, :destroy]

  # GET /column_fix4s
  # GET /column_fix4s.json
  def index
    @column_fix4s = ColumnFix4.all
  end

  # GET /column_fix4s/1
  # GET /column_fix4s/1.json
  def show
  end

  # GET /column_fix4s/new
  def new
    @column_fix4 = ColumnFix4.new
  end

  # GET /column_fix4s/1/edit
  def edit
  end

  # POST /column_fix4s
  # POST /column_fix4s.json
  def create
    @column_fix4 = ColumnFix4.new(column_fix4_params)

    respond_to do |format|
      if @column_fix4.save
        format.html { redirect_to @column_fix4, notice: 'Column fix4 was successfully created.' }
        format.json { render :show, status: :created, location: @column_fix4 }
      else
        format.html { render :new }
        format.json { render json: @column_fix4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /column_fix4s/1
  # PATCH/PUT /column_fix4s/1.json
  def update
    respond_to do |format|
      if @column_fix4.update(column_fix4_params)
        format.html { redirect_to @column_fix4, notice: 'Column fix4 was successfully updated.' }
        format.json { render :show, status: :ok, location: @column_fix4 }
      else
        format.html { render :edit }
        format.json { render json: @column_fix4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /column_fix4s/1
  # DELETE /column_fix4s/1.json
  def destroy
    @column_fix4.destroy
    respond_to do |format|
      format.html { redirect_to column_fix4s_url, notice: 'Column fix4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_column_fix4
      @column_fix4 = ColumnFix4.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def column_fix4_params
      params.fetch(:column_fix4, {})
    end
end
