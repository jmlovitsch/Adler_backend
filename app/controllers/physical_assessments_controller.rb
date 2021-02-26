class PhysicalAssessmentsController < ApplicationController
    before_action :set_physical_assessment, only: [:show, :update, :destroy]
    skip_before_action :authorized, only: [:index, :create, :update]

    # GET /physical_assessments
    # GET /physical_assessments.json
    def index
      @physical_assessments = PhysicalAssessment.all
      render json: @physical_assessments
    end

    # GET /physical_assessments/1
    # GET /physical_assessments/1.json
    def show
      render json: @physical_assessment
    end

    # POST /physical_assessments
    # POST /physical_assessments.json
    def create
      @physical_assessment = PhysicalAssessment.new(physical_assessment_params)

      if @physical_assessment.save
          render json: @physical_assessment, status: :created, location: @physical_assessment
      else
        render json: @physical_assessment.errors, status: :unprocessable_entity
      end
    end

    # PATCH/PUT /physical_assessments/1
    # PATCH/PUT /physical_assessments/1.json
    def update
      if @physical_assessment.update(physical_assessment_params)
        render :show, status: :ok, location: @physical_assessment
      else
        render json: @physical_assessment.errors, status: :unprocessable_entity
      end
    end

    # DELETE /physical_assessments/1
    # DELETE /physical_assessments/1.json
    def destroy
      @physical_assessment.destroy
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_physical_assessment
        @physical_assessment = PhysicalAssessment.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def physical_assessment_params
        params.require(:physical_assessment).permit(
            :admission_id,
            :author,
            :content,
          :skin_color,
          :skin_blemished,
          :skin_odor,
          :skin_tugor,
          :skin_temperature,
          :hair_thickness,
          :hair_distributed,
          :hair_body,
          :hair_infection,
          :hair_infestation,
          :nails_color,
          :nails_shape,
          :nails_smooth,
          :nails_epidermal_contact,
          :nails_blanch_test,
          :head_normocephalic,
          :head_symmetry,
          :skull_nodules,
          :skull_masses,
          :skull_depressions,
          :face_smooth,
          :face_consistency,
          :face_nodules,
          :face_masses,
          :eyebrows_even,
          :eyebrows_symmetric,
          :eyebrows_alignment,
          :eyebrows_movement,
          :eyelashes_distributed,
          :eyelashes_curled,
          :eyelids_discharges,
          :eyelids_discoloration,
          :eyelids_close,
          :eyelids_rate,
          :eyes_bulbar_conjunctiva_appearance,
          :eyes_sclera_color,
          :eyes_palpebral_conjunctiva_appearance,
          :eyes_lacrimal_gland_edema,
          :eyes_lacrimal_gland_tearing,
          :eyes_cornea_transparent,
          :eyes_cornea_texture,
          :eyes_cornea_details,
          :eyes_cornea_reaction,
          :eyes_pupils_size,
          :eyes_iris,
          :eyes_iris_constriction,
          :eyes_peripheral_visual_field_visibility,
          :eyes_eyes_coordinately_moved,
          :twenty_twenty,
          :ears_symmetry,
          :ears_color,
          :ears_alignment,
          :ears_mobility,
          :ears_pinna,
          :ears_hearing,
          :nose_symmetry,
          :nose_straight,
          :nose_color,
          :nose_discharge,
          :nose_flaring,
          :nose_tenderness,
          :nose_lesions,
          :mouth_uniformly_pink,
          :mouth_moist,
          :mouth_symmetric,
          :mouth_texture,
          :mouth_purse,
          :mouth_teeth_discoloration,
          :mouth_teeth_retraction_of_gums,
          :mouth_teeth_color_gums,
          :mouth_buccal_mucosa,
          :mouth_soft,
          :mouth_glistening,
          :mouth_elastic,
          :mouth_tongue_positioned,
          :mouth_tongue_color,
          :mouth_tongue_moistness,
          :mouth_tongue_roughness,
          :mouth_tongue_thin_whitish_coating,
          :mouth_smooth_palates,
          :mouth_color,
          :mouth_smoothness,
          :mouth_hard_palate,
          :mouth_irregular_texture,
          :mouth_uvula,
          :mouth_uvula_position,
          :neck_equal,
          :neck_movement,
          :neck_discomfort,
          :neck_lymph_nodes_palpable,
          :neck_trachea_position,
          :neck_thyroid_visiblity,
          :neck_ascend,
          :lungs_chest_chest_wall,
          :lungs_chest_tenderness,
          :lungs_chest_masses,
          :lungs_chest_expansion,
          :lungs_chest_quiet,
          :lungs_chest_rhythmic,
          :lungs_chest_effort,
          :spine_alignment,
          :spine_shoulders,
          :spine_hips,
          :heart_aortic_pulsations,
          :heart_pulmonic_pulsations,
          :heart_heaves,
          :heart_lifts,
          :abdomen_unblemished_skin,
          :abdomen_color,
          :abdomen_symmetry,
          :abdomen_jugular_visibility,
          :abdomen_blanch_test,
          :extremities_symmetrical_size,
          :extremities_symmetrical_length,
          :muscles_palpable,
          :muscles_tremors,
          :muscles_movements,
          :bones_deformities,
          :bones_tenderness,
          :bones_swelling,
          :joints_swelling,
          :joints_tenderness




        )
      end
  end
