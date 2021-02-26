require 'faker'
require 'byebug'

def create_users
10.times do

User.create(
    username: Faker::Number.hexadecimal(digits: 8),
    patient: true,
    password: "444",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    street_address: Faker::Address.street_address,
    street_address_2: "",
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip,
    health_insurance_provider: Faker::Company.name,
    health_insurance_policy_number: Faker::Company.ein,
    health_insurance_id: Faker::Company.duns_number,
    billing_address: Faker::Address.street_address,
    billing_address_2: "",
    billing_city: Faker::Address.city,
    billing_state: Faker::Address.state,
    billing_zip: Faker::Address.zip,
    home_phone: Faker::PhoneNumber.phone_number_with_country_code,
    cell_phone: Faker::PhoneNumber.phone_number_with_country_code,
    emergency_contact_name: Faker::Name.name,
    emergency_contact_relationship: Faker::Relationship.familial,
    emergency_contact_phone: Faker::PhoneNumber.phone_number_with_country_code,
    employee_id: Faker::Config.random,
    authorization: 'patient',
    email: Faker::Internet.email
    )

User.create(
    username: Faker::Number.hexadecimal(digits: 8),
    patient: false,
    password: "444",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    street_address: Faker::Address.street_address,
    street_address_2: "",
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip,
    health_insurance_provider: Faker::Company.name,
    health_insurance_policy_number: Faker::Company.ein,
    health_insurance_id: Faker::Company.duns_number,
    billing_address: Faker::Address.street_address,
    billing_address_2: "",
    billing_city: Faker::Address.city,
    billing_state: Faker::Address.state,
    billing_zip: Faker::Address.zip,
    home_phone: Faker::PhoneNumber.phone_number_with_country_code,
    cell_phone: Faker::PhoneNumber.phone_number_with_country_code,
    emergency_contact_name: Faker::Name.name,
    emergency_contact_relationship: Faker::Relationship.familial,
    emergency_contact_phone: Faker::PhoneNumber.phone_number_with_country_code,
    employee_id: Faker::Number.hexadecimal(digits: 16),
    medical_group: "dupage",
    authorization: 'employee',
    email: Faker::Internet.email
    )

    User.create(
        username: Faker::Number.hexadecimal(digits: 8),
        patient: false,
        password: "444",
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        street_address: Faker::Address.street_address,
        street_address_2: "",
        city: Faker::Address.city,
        state: Faker::Address.state,
        zip: Faker::Address.zip,
        health_insurance_provider: Faker::Company.name,
        health_insurance_policy_number: Faker::Company.ein,
        health_insurance_id: Faker::Company.duns_number,
        billing_address: Faker::Address.street_address,
        billing_address_2: "",
        billing_city: Faker::Address.city,
        billing_state: Faker::Address.state,
        billing_zip: Faker::Address.zip,
        home_phone: Faker::PhoneNumber.phone_number_with_country_code,
        cell_phone: Faker::PhoneNumber.phone_number_with_country_code,
        emergency_contact_name: Faker::Name.name,
        emergency_contact_relationship: Faker::Relationship.familial,
        emergency_contact_phone: Faker::PhoneNumber.phone_number_with_country_code,
        employee_id: Faker::Config.random,
        medical_group: "edward",
        authorization: 'employee',
        email: Faker::Internet.email
    )

end


User.create(
    username: "edward",
    password: "444",
    authorization: 'hospital',
    medical_group: "edward"

)

User.create(
    username: "dupage",
    password: "444",
    authorization: 'hospital',
    medical_group: "dupage"

)
User.create(username: "admin", password: "password", authorization: "admin")
User.create(
    username: "patient",
    patient: true,
    password: "444",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    street_address: Faker::Address.street_address,
    street_address_2: "",
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip,
    health_insurance_provider: Faker::Company.name,
    health_insurance_policy_number: Faker::Company.ein,
    health_insurance_id: Faker::Company.duns_number,
    billing_address: Faker::Address.street_address,
    billing_address_2: "",
    billing_city: Faker::Address.city,
    billing_state: Faker::Address.state,
    billing_zip: Faker::Address.zip,
    home_phone: Faker::PhoneNumber.phone_number_with_country_code,
    cell_phone: Faker::PhoneNumber.phone_number_with_country_code,
    emergency_contact_name: Faker::Name.name,
    emergency_contact_relationship: Faker::Relationship.familial,
    emergency_contact_phone: Faker::PhoneNumber.phone_number_with_country_code,
    employee_id: Faker::Config.random,
    authorization: 'patient',
    email: Faker::Internet.email
    )

User.create(
    username: "employee",
    patient: false,
    password: "444",
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    street_address: Faker::Address.street_address,
    street_address_2: "",
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip,
    health_insurance_provider: Faker::Company.name,
    health_insurance_policy_number: Faker::Company.ein,
    health_insurance_id: Faker::Company.duns_number,
    billing_address: Faker::Address.street_address,
    billing_address_2: "",
    billing_city: Faker::Address.city,
    billing_state: Faker::Address.state,
    billing_zip: Faker::Address.zip,
    home_phone: Faker::PhoneNumber.phone_number_with_country_code,
    cell_phone: Faker::PhoneNumber.phone_number_with_country_code,
    emergency_contact_name: Faker::Name.name,
    emergency_contact_relationship: Faker::Relationship.familial,
    emergency_contact_phone: Faker::PhoneNumber.phone_number_with_country_code,
    employee_id: Faker::Number.hexadecimal(digits: 16),
    medical_group: "dupage",
    authorization: 'employee',
    email: Faker::Internet.email
    )

end

def api_response(url, key)
    response = RestClient.get(url)
    JSON.parse(response)[key]
    # creates array of hashes from key in API
end

def create_drugs
    results_array = api_response("http://localhost:3000/results", "results")

    results_array.each do |result|
        if result["openfda"]
            generic_name = result["openfda"]["generic_name"]
            substance_name = result["openfda"]["substance_name"]
            product_type = result["openfda"]["product_type"]
        end
        if result["products"]
            result["products"].each do |product|

                if product["marketing_status"] == "Prescription"

                    brand_name = product["brand_name"]
                    route= product["route"]
                    active_ingredients = product["active_ingredients"]
                    dosage_form = product["dosage_form"]

                    Drug.create(generic_name: generic_name, brand_name: brand_name, product_type: product_type, route: route, substance_name: substance_name, active_ingredients: active_ingredients, dosage_form: dosage_form)
                end
            end
        end
    end
end



# Object.keys(x.careplans.nursing_care_plans).map(key => {
#     return key})
# (13) ["Health Promotion", "Nutrition", "Elimination and Exchange", "Activity/Rest", "Perception/Cognition", "Self-Perception", "Role relationship", "Sexuality", "Coping/stress tolerance", "Life principles", "Safety/Protection", "Comfort", "Growth"]


# x.careplans.nursing_care_plans["Activity/Rest"]
# (5) [{…}, {…}, {…}, {…}, {…}]
# 0: {Sleep/Rest: {…}}
# 1: {Activity/Exercise: {…}}
# 2: {Energy balance: {…}}
# 3: {Cardiovascular/Pulmonary responses: {…}}
# 4: {Self-care: {…}}

def create_careplans
    categories_array = ["Health Promotion", "Nutrition", "Elimination and Exchange", "Activity/Rest", "Perception/Cognition", "Self-Perception", "Role relationship", "Sexuality", "Coping/stress tolerance", "Life principles", "Safety/Protection", "Comfort", "Growth"]

    results_array = api_response("http://localhost:3000/careplans", "nursing_care_plans")
    # nursing_care_plans

    categories_array.each do |category|
        dc = DiagnosisCategory.create(name: category)
        # => "Health Promotion"
        results_array[category].each do |t|
            nd = NursingDiagnosis.create(name: t.keys[0], diagnosis_category_id: dc.id)
                # =>"Decreased diversional activity engagement (Nursing Care Plan)"


                t[t.keys[0]].keys.each do |key|
                    if key == "goals"
                        t[t.keys[0]][key].each do |goal|

                            Goal.create(item: goal, nursing_diagnosis_id: nd.id)
                        end
                    else
                        t[t.keys[0]][key].each do |intervention|

                            Intervention.create(item: intervention, nursing_diagnosis_id: nd.id)
                        end
                    end
                    # Goal.create(goal: key[0], nursing_diagnosis_id: nd.id)
                    # Intervention.create(intervention: key[1], nursing_diagnosis_id: nd.id)

                end

                # t.keys.each do |k|

                #     t[k]["goals"].each do |goal|
                #         Goal.create(goal: goal, nursing_diagnosis_id: nd.id)
                #     end

                #     t[k]["intervention"].each do |intervention|
                #         Intervention.create(intervention: intervention, nursing_diagnosis_id: nd.id)
                #     end

                # end
        end
    end






end

# create_careplans
# create_users
# create_drugs
#
# results_array["Health Promotion"][0].keys.map {|key|results_array["Health Promotion"][0][key]["goals"]}
# [["Increase in the knowledge on the prevention of infection", "No signs and symptoms of infection", "Normal temperature, respiratory rate, pulse rate, and blood pressure", "Demonstrate the proper handwashing technique as a means of preventing transmission of infections"]]

# results_array["Health Promotion"][0].keys.map {|key|results_array["Health Promotion"][0][key]["intervention"]}
# [["1. educate the patient on the ways of preventing infection such as the proper handwashing technique. It will limit or reduce transmission of infections through proper handwashing", "2. always perform the proper handwashing technique before and after any procedure done to the patient. It will prevent transmission and acquisition of infection by both the nurse and the patient", "3. encourage the patient to eat healthy foods that can enhance the immune function and take necessary vitamins needed. It enhances the immune function of the body", "4. increase oral fluid intake. It will let the patient urinate frequently so as to flush the microorganisms present in the body", "5. limit visitors if the patient is immunocompromised and render reverse isolation. It will prevent transmission of pathogens from visitors which may aggravate the infection", "6. wear mask, gloves and gown if necessary. It will limit further transmission of microorganisms to and from the patient"]]

# User.find(35).update(patient: false)
