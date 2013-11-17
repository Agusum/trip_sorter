class BoardingCardsController < ApplicationController
  before_action :set_boarding_card, only: [:show, :edit, :update, :destroy]

  # GET /boarding_cards
  # GET /boarding_cards.json
  def index
    @boarding_cards = BoardingCard.all
  end

  # GET /boarding_cards/1
  # GET /boarding_cards/1.json
  def show
  end

  # GET /boarding_cards/new
  def new
    @boarding_card = BoardingCard.new
  end

  # GET /boarding_cards/1/edit
  def edit
  end

  # POST /boarding_cards
  # POST /boarding_cards.json
  def create
    @boarding_card = BoardingCard.new(boarding_card_params)

    respond_to do |format|
      if @boarding_card.save
        format.html { redirect_to @boarding_card, notice: 'Boarding card was successfully created.' }
        format.json { render action: 'show', status: :created, location: @boarding_card }
      else
        format.html { render action: 'new' }
        format.json { render json: @boarding_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /boarding_cards/1
  # PATCH/PUT /boarding_cards/1.json
  def update
    respond_to do |format|
      if @boarding_card.update(boarding_card_params)
        format.html { redirect_to @boarding_card, notice: 'Boarding card was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @boarding_card.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boarding_cards/1
  # DELETE /boarding_cards/1.json
  def destroy
    @boarding_card.destroy
    respond_to do |format|
      format.html { redirect_to boarding_cards_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_boarding_card
      @boarding_card = BoardingCard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def boarding_card_params
      params[:boarding_card]
    end
end
