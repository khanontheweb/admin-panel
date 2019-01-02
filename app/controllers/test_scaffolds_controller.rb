class TestScaffoldsController < ApplicationController
  before_action :set_test_scaffold, only: [:show, :edit, :update, :destroy]

  # GET /test_scaffolds
  # GET /test_scaffolds.json
  def index
    @test_scaffolds = TestScaffold.all
  end

  # GET /test_scaffolds/1
  # GET /test_scaffolds/1.json
  def show
  end

  # GET /test_scaffolds/new
  def new
    @test_scaffold = TestScaffold.new
  end

  # GET /test_scaffolds/1/edit
  def edit
  end

  # POST /test_scaffolds
  # POST /test_scaffolds.json
  def create
    @test_scaffold = TestScaffold.new(test_scaffold_params)

    respond_to do |format|
      if @test_scaffold.save
        format.html { redirect_to @test_scaffold, notice: 'Test scaffold was successfully created.' }
        format.json { render :show, status: :created, location: @test_scaffold }
      else
        format.html { render :new }
        format.json { render json: @test_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_scaffolds/1
  # PATCH/PUT /test_scaffolds/1.json
  def update
    respond_to do |format|
      if @test_scaffold.update(test_scaffold_params)
        format.html { redirect_to @test_scaffold, notice: 'Test scaffold was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_scaffold }
      else
        format.html { render :edit }
        format.json { render json: @test_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_scaffolds/1
  # DELETE /test_scaffolds/1.json
  def destroy
    @test_scaffold.destroy
    respond_to do |format|
      format.html { redirect_to test_scaffolds_url, notice: 'Test scaffold was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_scaffold
      @test_scaffold = TestScaffold.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_scaffold_params
      params.require(:test_scaffold).permit(:email, :password, :password_confirmation)
    end
end
