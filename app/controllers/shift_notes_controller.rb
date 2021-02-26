class ShiftNotesController < ApplicationController
  before_action :set_shift_note, only: [:show, :update, :destroy]
  skip_before_action :authorized, only: [:index, :create, :update]

  # GET /shift_notes
  # GET /shift_notes.json
  def index
    @shift_notes = ShiftNote.all
    render json: @shift_notes
  end

  # GET /shift_notes/1
  # GET /shift_notes/1.json
  def show
    render json: @shift_note
  end

  # POST /shift_notes
  # POST /shift_notes.json
  def create
    @shift_note = ShiftNote.new(shift_note_params)

    if @shift_note.save
        render json: @shift_note, status: :created, location: @shift_note
    else
      render json: @shift_note.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /shift_notes/1
  # PATCH/PUT /shift_notes/1.json
  def update
    if @shift_note.update(shift_note_params)
      render :show, status: :ok, location: @shift_note
    else
      render json: @shift_note.errors, status: :unprocessable_entity
    end
  end

  # DELETE /shift_notes/1
  # DELETE /shift_notes/1.json
  def destroy
    @shift_note.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shift_note
      @shift_note = ShiftNote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shift_note_params
      params.require(:shift_note).permit(:content, :admission_id, :author)
    end
end
