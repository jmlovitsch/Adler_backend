# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_26_220147) do

  create_table "admissions", force: :cascade do |t|
    t.integer "patient_id"
    t.string "admitting_diagnosis"
    t.datetime "admission_date"
    t.string "current_room"
    t.datetime "expected_discharge"
    t.string "code_status"
    t.string "who_authorized_share"
    t.string "religion_and_parish"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "healthcare_provider"
    t.string "location"
  end

  create_table "admittings", force: :cascade do |t|
    t.integer "patient_id"
    t.string "content"
    t.integer "admission_id", null: false
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_admittings_on_patient_id"
  end

  create_table "assessments", force: :cascade do |t|
    t.string "assessmentable_type", null: false
    t.integer "assessmentable_id", null: false
    t.string "author"
    t.integer "admission_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assessmentable_type", "assessmentable_id"], name: "index_assessments_on_assessmentable_type_and_assessmentable_id"
  end

  create_table "assignments", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "admission_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["admission_id"], name: "index_assignments_on_admission_id"
    t.index ["user_id"], name: "index_assignments_on_user_id"
  end

  create_table "care_plans", force: :cascade do |t|
    t.string "diagnosis_category"
    t.integer "admission_id", null: false
    t.string "author"
    t.string "nursing_diagnosis"
    t.text "ocs"
    t.text "acs"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "consults", force: :cascade do |t|
    t.string "name"
    t.string "provider"
    t.string "acknowledged_by"
    t.integer "admission_id", null: false
    t.string "written_requested_by"
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "dailycares", force: :cascade do |t|
    t.integer "admission_id", null: false
    t.string "author"
    t.datetime "date_initiated"
    t.string "nursing_diagnosis"
    t.string "goals_outcomes"
    t.string "interventions"
    t.string "evaluation"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "diagnosis_categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "diets", force: :cascade do |t|
    t.string "type"
    t.datetime "time_start"
    t.boolean "eligible_room_service"
    t.boolean "eligible_accuchecks"
    t.string "notes"
    t.string "provider"
    t.string "acknowledged_by"
    t.integer "admission_id", null: false
    t.string "written_requested_by"
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "discharges", force: :cascade do |t|
    t.integer "patient_id"
    t.string "content"
    t.integer "admission_id", null: false
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_discharges_on_patient_id"
  end

  create_table "drugs", force: :cascade do |t|
    t.string "generic_name"
    t.string "brand_name"
    t.string "product_type"
    t.string "route"
    t.string "substance_name"
    t.string "active_ingredients"
    t.string "dosage_form"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "educations", force: :cascade do |t|
    t.string "content"
    t.integer "admission_id", null: false
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "goals", force: :cascade do |t|
    t.string "item"
    t.integer "nursing_diagnosis_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "imagings", force: :cascade do |t|
    t.string "time"
    t.string "frequency"
    t.string "contrast"
    t.string "provider"
    t.string "acknowledged_by"
    t.integer "admission_id", null: false
    t.string "written_requested_by"
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "intakeoutputs", force: :cascade do |t|
    t.integer "admission_id", null: false
    t.string "author"
    t.string "po"
    t.string "percent_meal"
    t.string "iv"
    t.string "urine"
    t.string "urine_occurance"
    t.string "urine_color"
    t.string "uring_appearance"
    t.string "urine_odor"
    t.string "stool_occurance"
    t.string "stool_incontinence"
    t.string "stool_color"
    t.string "stool_amount"
    t.string "stool_appearance"
    t.string "drainage_method"
    t.string "internal"
    t.string "external"
    t.string "urine_catheter"
    t.string "male_genetalia"
    t.string "female_genetalia"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "interventions", force: :cascade do |t|
    t.string "item"
    t.integer "nursing_diagnosis_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "ivs", force: :cascade do |t|
    t.integer "admission_id", null: false
    t.string "author"
    t.string "iv_type"
    t.string "dresssing_status"
    t.string "site_status"
    t.string "line_status"
    t.datetime "dressing_change_due"
    t.boolean "cap"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "labs", force: :cascade do |t|
    t.string "issued_how"
    t.string "source"
    t.string "time_due"
    t.string "frequency"
    t.string "provider"
    t.string "acknowledged_by"
    t.integer "admission_id", null: false
    t.string "written_requested_by"
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mars", force: :cascade do |t|
    t.string "text"
    t.integer "admission_id", null: false
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "nursing_diagnoses", force: :cascade do |t|
    t.string "name"
    t.integer "diagnosis_category_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "pains", force: :cascade do |t|
    t.boolean "assume_pain"
    t.boolean "asleep"
    t.string "scale_type"
    t.string "scale_value"
    t.string "orientation"
    t.string "location"
    t.string "treatment"
    t.string "pasero_sedation"
    t.integer "admission_id", null: false
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "physical_assessments", force: :cascade do |t|
    t.integer "admission_id", null: false
    t.string "author"
    t.string "skin_color"
    t.string "skin_blemished"
    t.string "skin_odor"
    t.string "skin_tugor"
    t.string "skin_temperature"
    t.string "hair_thickness"
    t.string "hair_distributed"
    t.string "hair_body"
    t.string "hair_infection"
    t.string "hair_infestation"
    t.string "nails_color"
    t.string "nails_shape"
    t.string "nails_smooth"
    t.string "nails_epidermal_contact"
    t.string "nails_blanch_test"
    t.string "head_normocephalic"
    t.string "head_symmetry"
    t.string "skull_nodules"
    t.string "skull_masses"
    t.string "skull_depressions"
    t.string "face_smooth"
    t.string "face_consistency"
    t.string "face_nodules"
    t.string "face_masses"
    t.string "eyebrows_even"
    t.string "eyebrows_symmetric"
    t.string "eyebrows_alignment"
    t.string "eyebrows_movement"
    t.string "eyelashes_distributed"
    t.string "eyelashes_curled"
    t.string "eyelids_discharges"
    t.string "eyelids_discoloration"
    t.string "eyelids_close"
    t.string "eyelids_rate"
    t.string "eyes_bulbar_conjunctiva_appearance"
    t.string "eyes_sclera_color"
    t.string "eyes_palpebral_conjunctiva_appearance"
    t.string "eyes_lacrimal_gland_edema"
    t.string "eyes_lacrimal_gland_tearing"
    t.string "eyes_cornea_transparent"
    t.string "eyes_cornea_texture"
    t.string "eyes_cornea_details"
    t.string "eyes_cornea_reaction"
    t.string "eyes_pupils_size"
    t.string "eyes_iris"
    t.string "eyes_iris_constriction"
    t.string "eyes_peripheral_visual_field_visibility"
    t.string "eyes_eyes_coordinately_moved"
    t.string "twenty_twenty"
    t.string "ears_symmetry"
    t.string "ears_color"
    t.string "ears_alignment"
    t.string "ears_mobility"
    t.string "ears_pinna"
    t.string "ears_hearing"
    t.string "nose_symmetry"
    t.string "nose_straight"
    t.string "nose_color"
    t.string "nose_discharge"
    t.string "nose_flaring"
    t.string "nose_tenderness"
    t.string "nose_lesions"
    t.string "mouth_uniformly_pink"
    t.string "mouth_moist"
    t.string "mouth_symmetric"
    t.string "mouth_texture"
    t.string "mouth_purse"
    t.string "mouth_teeth_discoloration"
    t.string "mouth_teeth_retraction_of_gums"
    t.string "mouth_teeth_color_gums"
    t.string "mouth_buccal_mucosa"
    t.string "mouth_soft"
    t.string "mouth_glistening"
    t.string "mouth_elastic"
    t.string "mouth_tongue_positioned"
    t.string "mouth_tongue_color"
    t.string "mouth_tongue_moistness"
    t.string "mouth_tongue_roughness"
    t.string "mouth_tongue_thin_whitish_coating"
    t.string "mouth_smooth_palates"
    t.string "mouth_color"
    t.string "mouth_smoothness"
    t.string "mouth_hard_palate"
    t.string "mouth_irregular_texture"
    t.string "mouth_uvula"
    t.string "mouth_uvula_position"
    t.string "neck_equal"
    t.string "neck_movement"
    t.string "neck_discomfort"
    t.string "neck_lymph_nodes_palpable"
    t.string "neck_trachea_position"
    t.string "neck_thyroid_visiblity"
    t.string "neck_ascend"
    t.string "lungs_chest_chest_wall"
    t.string "lungs_chest_tenderness"
    t.string "lungs_chest_masses"
    t.string "lungs_chest_expansion"
    t.string "lungs_chest_quiet"
    t.string "lungs_chest_rhythmic"
    t.string "lungs_chest_effort"
    t.string "spine_alignment"
    t.string "spine_shoulders"
    t.string "spine_hips"
    t.string "heart_aortic_pulsations"
    t.string "heart_pulmonic_pulsations"
    t.string "heart_heaves"
    t.string "heart_lifts"
    t.string "abdomen_unblemished_skin"
    t.string "abdomen_color"
    t.string "abdomen_symmetry"
    t.string "abdomen_jugular_visibility"
    t.string "abdomen_blanch_test"
    t.string "extremities_symmetrical_size"
    t.string "extremities_symmetrical_length"
    t.string "muscles_palpable"
    t.string "muscles_tremors"
    t.string "muscles_movements"
    t.string "bones_deformities"
    t.string "bones_tenderness"
    t.string "bones_swelling"
    t.string "joints_swelling"
    t.string "joints_tenderness"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "content"
  end

  create_table "poly_comments", force: :cascade do |t|
    t.text "content"
    t.string "commentable_type", null: false
    t.integer "commentable_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["commentable_type", "commentable_id"], name: "index_poly_comments_on_commentable_type_and_commentable_id"
  end

  create_table "rxes", force: :cascade do |t|
    t.string "route"
    t.string "iv_rate"
    t.string "source_location"
    t.string "dose"
    t.string "time_due"
    t.string "frequency"
    t.string "if_prn_reason"
    t.string "duration"
    t.string "provider"
    t.string "acknowledged_by"
    t.integer "admission_id", null: false
    t.string "written_requested_by"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shift_assessments", force: :cascade do |t|
    t.string "content"
    t.integer "admission_id", null: false
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shift_notes", force: :cascade do |t|
    t.string "content"
    t.integer "admission_id", null: false
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "summaries", force: :cascade do |t|
    t.string "content"
    t.integer "admission_id", null: false
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transfers", force: :cascade do |t|
    t.integer "patient_id"
    t.string "content"
    t.integer "admission_id", null: false
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_transfers_on_patient_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.boolean "patient"
    t.string "first_name"
    t.string "last_name"
    t.string "street_address"
    t.string "street_address_2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.string "health_insurance_provider"
    t.string "health_insurance_policy_number"
    t.string "health_insurance_id"
    t.string "billing_address"
    t.string "billing_address_2"
    t.string "billing_city"
    t.string "billing_state"
    t.string "billing_zip"
    t.integer "home_phone"
    t.integer "cell_phone"
    t.string "emergency_contact_name"
    t.string "emergency_contact_relationship"
    t.string "emergency_contact_phone"
    t.string "employee_id"
    t.string "employee_type"
    t.string "medical_group"
    t.string "authorization"
    t.string "email"
    t.boolean "locked"
    t.string "ssn"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "vitals", force: :cascade do |t|
    t.string "bp_systolic"
    t.string "bp_diastolic"
    t.string "bp_site"
    t.string "bp_position"
    t.string "bp_type"
    t.string "hr_type"
    t.string "hr_bpm"
    t.string "hr_quality"
    t.string "temp_site"
    t.string "temp_degree"
    t.string "rr_hr"
    t.string "rr_rrmin"
    t.string "rr_quality"
    t.string "o2_saturation"
    t.string "o2_source"
    t.string "o2_site"
    t.integer "admission_id", null: false
    t.string "author"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "assignments", "admissions"
  add_foreign_key "assignments", "users"
end
