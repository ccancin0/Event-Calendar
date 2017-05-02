class HttpartyTestsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_httparty_test, only: [:show, :edit, :update, :destroy]

  # GET /httparty_tests
  # GET /httparty_tests.json
  def index
    #@httparty_tests = HttpartyTest.all
    @httparty_tests = HttpartyTest.new
    #@httparty_tests.create_events
  end

  # GET /httparty_tests/1
  # GET /httparty_tests/1.json
  def show
  end

  # GET /httparty_tests/new
  def new
    @httparty_test = HttpartyTest.new
  end

  # GET /httparty_tests/1/edit
  def edit
  end

  # POST /httparty_tests
  # POST /httparty_tests.json
  def create
    @httparty_test = HttpartyTest.new(httparty_test_params)

    respond_to do |format|
      if @httparty_test.save
        format.html { redirect_to @httparty_test, notice: 'Httparty test was successfully created.' }
        format.json { render :show, status: :created, location: @httparty_test }
      else
        format.html { render :new }
        format.json { render json: @httparty_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /httparty_tests/1
  # PATCH/PUT /httparty_tests/1.json
  def update
    respond_to do |format|
      if @httparty_test.update(httparty_test_params)
        format.html { redirect_to @httparty_test, notice: 'Httparty test was successfully updated.' }
        format.json { render :show, status: :ok, location: @httparty_test }
      else
        format.html { render :edit }
        format.json { render json: @httparty_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /httparty_tests/1
  # DELETE /httparty_tests/1.json
  def destroy
    @httparty_test.destroy
    respond_to do |format|
      format.html { redirect_to httparty_tests_url, notice: 'Httparty test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_httparty_test
      @httparty_test = HttpartyTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def httparty_test_params
      params.fetch(:httparty_test, {})
    end
end
