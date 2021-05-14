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

ActiveRecord::Schema.define(version: 2021_04_27_064648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "cube"
  enable_extension "earthdistance"
  enable_extension "pgcrypto"
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "active_storage_attachments", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name", null: false
    t.uuid "record_id", null: false
    t.string "record_type", null: false
    t.uuid "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "addresses", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id"
    t.string "street"
    t.string "city"
    t.string "zip_code"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "label"
    t.uuid "demand_id"
    t.bigint "etablishment_id"
    t.index ["etablishment_id"], name: "index_addresses_on_etablishment_id"
    t.index ["latitude", "longitude"], name: "index_addresses_on_latitude_and_longitude"
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "articles", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "title", default: ""
    t.string "content", default: ""
    t.integer "article_order", default: 0
    t.string "pic", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "certificates", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "contractor_id"
    t.uuid "document_id"
    t.string "title"
    t.string "certificate_type"
    t.integer "graduation_year"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "other_label"
    t.index ["contractor_id"], name: "index_certificates_on_contractor_id"
    t.index ["document_id"], name: "index_certificates_on_document_id"
  end

  create_table "client_to_offers", force: :cascade do |t|
    t.bigint "offer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "client_id"
    t.index ["client_id"], name: "index_client_to_offers_on_client_id"
    t.index ["offer_id"], name: "index_client_to_offers_on_offer_id"
  end

  create_table "clients", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "notifications"
    t.boolean "newsletters"
    t.string "last_name"
    t.string "first_name"
    t.boolean "terms_and_conditions"
    t.string "status"
    t.integer "gender"
    t.string "maiden_name"
    t.date "birth_date"
    t.string "nationality"
    t.string "cesu"
    t.string "cesu_email"
    t.string "cesu_encrypted_password"
    t.string "phone"
    t.datetime "last_status_change"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "provider"
    t.string "uid"
    t.string "address_complete"
    t.boolean "password_change", default: false
    t.string "for_who", default: ""
    t.integer "age"
    t.string "work_days", default: [], array: true
    t.string "slots", default: ""
    t.string "first_name_client", default: ""
    t.string "last_name_client", default: ""
    t.string "other_informations", default: ""
    t.string "location", default: ""
    t.string "date_start", default: ""
    t.boolean "is_tranquility", default: false
    t.boolean "is_partner", default: false
    t.boolean "is_b2b", default: false
    t.boolean "is_admin"
    t.bigint "subscription_id"
    t.uuid "invited_by"
    t.index ["confirmation_token"], name: "index_clients_on_confirmation_token", unique: true
    t.index ["email"], name: "index_clients_on_email", unique: true
    t.index ["invited_by"], name: "index_clients_on_invited_by"
    t.index ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true
    t.index ["subscription_id"], name: "index_clients_on_subscription_id"
    t.index ["user_id"], name: "index_clients_on_user_id"
  end

  create_table "clients_etablishments", force: :cascade do |t|
    t.uuid "client_id"
    t.bigint "etablishment_id"
    t.index ["client_id"], name: "index_clients_etablishments_on_client_id"
    t.index ["etablishment_id"], name: "index_clients_etablishments_on_etablishment_id"
  end

  create_table "clients_services", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "client_id"
    t.uuid "service_id"
    t.index ["client_id"], name: "index_clients_services_on_client_id"
    t.index ["service_id"], name: "index_clients_services_on_service_id"
  end

  create_table "companies", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "client_id"
    t.string "name", default: ""
    t.string "company_type", default: ""
    t.string "address", default: ""
    t.string "siret", default: ""
    t.index ["client_id"], name: "index_companies_on_client_id"
  end

  create_table "contractors", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "newsletters"
    t.string "maiden_name"
    t.string "last_name"
    t.string "first_name"
    t.date "birth_date"
    t.string "birth_city"
    t.string "birth_department"
    t.string "birth_country"
    t.string "nationality"
    t.string "social_security_number"
    t.string "cesu"
    t.boolean "no_cesu"
    t.boolean "sepa_billing_mandate"
    t.string "phone"
    t.integer "working_area"
    t.float "hourly_rate"
    t.text "about"
    t.string "status"
    t.boolean "terms_and_conditions"
    t.datetime "last_status_change"
    t.integer "birth_year"
    t.boolean "gender"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "provider"
    t.string "uid"
    t.string "fb_pic"
    t.text "admin_comment"
    t.uuid "language_id"
    t.uuid "more_id"
    t.uuid "quality_id"
    t.string "about_title"
    t.string "main_language"
    t.string "other_languages", default: [], array: true
    t.boolean "inactive", default: false
    t.boolean "pro", default: false
    t.date "pro_change_date_at"
    t.integer "experience_level", default: 0
    t.string "cni_status", default: "not_certified"
    t.string "carte_vitale_status", default: "not_certified"
    t.string "certificate_status", default: "not_certified"
    t.uuid "job_id"
    t.string "agreement_status", default: "not_certified"
    t.string "professional_liability_status", default: "not_certified"
    t.boolean "holidays", default: false
    t.boolean "nightguard", default: false
    t.boolean "public_holidays", default: false
    t.string "extract_of_the_criminal_record_status", default: "not_certified"
    t.string "cni_verso_status", default: "not_certified"
    t.boolean "is_certified", default: false
    t.datetime "last_certification_date"
    t.datetime "first_certification_date"
    t.string "night_watch", default: ""
    t.boolean "registered_from_app", default: false
    t.string "cv_status", default: "not_certified"
    t.string "profile_url"
    t.datetime "last_activity_answer_at"
    t.string "activity_token"
    t.boolean "xp_certified"
    t.string "driver_s_license_status", default: "not_certified"
    t.string "logger_json", default: "{}"
    t.string "registration_origin", default: ""
    t.string "public_admin_comment", default: ""
    t.index ["confirmation_token"], name: "index_contractors_on_confirmation_token", unique: true
    t.index ["email"], name: "index_contractors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_contractors_on_reset_password_token", unique: true
    t.index ["user_id"], name: "index_contractors_on_user_id"
  end

  create_table "contractors_mores", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "contractor_id"
    t.uuid "more_id"
    t.index ["contractor_id"], name: "index_contractors_mores_on_contractor_id"
    t.index ["more_id"], name: "index_contractors_mores_on_more_id"
  end

  create_table "contractors_other_services", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "contractor_id"
    t.uuid "service_id"
    t.index ["contractor_id"], name: "index_contractors_other_services_on_contractor_id"
    t.index ["service_id"], name: "index_contractors_other_services_on_service_id"
  end

  create_table "contractors_prospects", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "contractor_id"
    t.uuid "prospect_id"
    t.integer "level", default: 0
    t.index ["contractor_id"], name: "index_contractors_prospects_on_contractor_id"
    t.index ["prospect_id"], name: "index_contractors_prospects_on_prospect_id"
  end

  create_table "contractors_qualities", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "contractor_id"
    t.uuid "quality_id"
    t.index ["contractor_id"], name: "index_contractors_qualities_on_contractor_id"
    t.index ["quality_id"], name: "index_contractors_qualities_on_quality_id"
  end

  create_table "contractors_services", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "contractor_id"
    t.uuid "service_id"
    t.index ["contractor_id"], name: "index_contractors_services_on_contractor_id"
    t.index ["service_id"], name: "index_contractors_services_on_service_id"
  end

  create_table "documents", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id"
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_documents_on_user_id"
  end

  create_table "etablishment_to_contractor_bans", force: :cascade do |t|
    t.uuid "contractor_id"
    t.bigint "etablishment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contractor_id"], name: "index_etablishment_to_contractor_bans_on_contractor_id"
    t.index ["etablishment_id"], name: "index_etablishment_to_contractor_bans_on_etablishment_id"
  end

  create_table "etablishments", force: :cascade do |t|
    t.uuid "client_id"
    t.string "name", default: ""
    t.string "phone", default: ""
    t.string "etablishment_type", default: ""
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "subscribed_at"
    t.string "color", default: "#FFFFFF"
    t.index ["client_id"], name: "index_etablishments_on_client_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.uuid "contractor_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "employer"
    t.string "phone"
    t.string "city"
    t.string "employer_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "job_id"
    t.index ["contractor_id"], name: "index_experiences_on_contractor_id"
    t.index ["job_id"], name: "index_experiences_on_job_id"
  end

  create_table "family_members", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "client_id"
    t.string "first_name"
    t.string "last_name"
    t.string "zip_code"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.index ["client_id"], name: "index_family_members_on_client_id"
  end

  create_table "flat_rates", force: :cascade do |t|
    t.string "name"
    t.string "price"
    t.integer "nb_offer"
    t.integer "nb_coworker"
    t.string "desc"
    t.integer "nb_contact", default: 0
  end

  create_table "jobs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.string "acronym"
  end

  create_table "jwt_blacklist", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "exp", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["jti"], name: "index_jwt_blacklist_on_jti"
  end

  create_table "link_for_prime_demands", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "prime_demand_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prime_demand_id"], name: "index_link_for_prime_demands_on_prime_demand_id"
  end

  create_table "mores", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "contractor_id"
    t.string "icon_path"
    t.string "icon_path_grey"
  end

  create_table "notifications", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "contractor_id"
    t.string "expo_notification_token", default: ""
    t.boolean "as_notification"
    t.datetime "last_notifcation_status_update"
    t.index ["contractor_id"], name: "index_notifications_on_contractor_id"
  end

  create_table "offer_to_contractors", force: :cascade do |t|
    t.bigint "offer_id"
    t.uuid "contractor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "client_accepted"
    t.datetime "client_chose_at"
    t.datetime "confirmed_at"
    t.boolean "from_keradom", default: true
    t.boolean "confirmed"
    t.boolean "contractor_accepted"
    t.datetime "contractor_chose_at"
    t.string "status"
    t.string "status_datetime"
    t.string "treated_by"
    t.datetime "treated_at"
    t.boolean "is_visible", default: true
    t.string "apply_origin", default: ""
    t.string "messenger"
    t.index ["contractor_id"], name: "index_offer_to_contractors_on_contractor_id"
    t.index ["offer_id"], name: "index_offer_to_contractors_on_offer_id"
  end

  create_table "offer_to_services", force: :cascade do |t|
    t.bigint "offer_id"
    t.uuid "service_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["offer_id"], name: "index_offer_to_services_on_offer_id"
    t.index ["service_id"], name: "index_offer_to_services_on_service_id"
  end

  create_table "offers", force: :cascade do |t|
    t.string "title"
    t.datetime "publication_date"
    t.boolean "is_archived", default: false
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "experience"
    t.float "wage"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "contract_type"
    t.string "work_time"
    t.boolean "offer_published", default: false
    t.bigint "etablishment_id"
    t.uuid "client_id"
    t.boolean "is_template", default: false
    t.string "template_title"
    t.uuid "job_id"
    t.float "min_wage"
    t.float "max_wage"
    t.string "wage_per", default: ""
    t.string "wage_type", default: ""
    t.boolean "indeed_published", default: false
    t.boolean "meteo_job_published", default: false
    t.integer "experience_level"
    t.integer "hours_per_week"
    t.datetime "meteo_job_published_date"
    t.datetime "indeed_published_date"
    t.boolean "meteo_job_cvtheque", default: false
    t.boolean "indeed_cvtheque", default: false
    t.datetime "meteo_job_cvtheque_date"
    t.datetime "indeed_cvtheque_date"
    t.boolean "job_need_certificate"
    t.index ["client_id"], name: "index_offers_on_client_id"
    t.index ["etablishment_id"], name: "index_offers_on_etablishment_id"
    t.index ["job_id"], name: "index_offers_on_job_id"
  end

  create_table "offers_mores", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.bigint "offer_id"
    t.uuid "more_id"
    t.index ["more_id"], name: "index_offers_mores_on_more_id"
    t.index ["offer_id"], name: "index_offers_mores_on_offer_id"
  end

  create_table "prime_demands", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "contractor_id"
    t.uuid "prospect_id"
    t.text "admin_comment"
    t.string "status", default: "pending"
    t.string "string", default: "pending"
    t.string "reason"
    t.string "location"
    t.integer "demand_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "link_for_prime_demand_id"
    t.index ["contractor_id"], name: "index_prime_demands_on_contractor_id"
    t.index ["prospect_id"], name: "index_prime_demands_on_prospect_id"
  end

  create_table "prospects", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.text "other_informations"
    t.string "mail"
    t.string "location"
    t.string "work_time"
    t.integer "work_paid"
    t.date "date_start"
    t.uuid "services_id"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "payment_link"
    t.text "first_appointment"
    t.integer "landing_page"
    t.boolean "payment", default: false
    t.string "charge_url"
    t.string "stripe_token"
    t.string "contractor_list"
    t.boolean "activate", default: true
    t.string "intervenant"
    t.string "refused_reason"
    t.uuid "contracted_contractor"
    t.string "no_deal_reason"
    t.text "first_appointment_report"
    t.string "status", default: "En cours"
    t.string "for_who", default: ""
    t.integer "age"
    t.string "work_days", default: [], array: true
    t.string "slots", default: ""
    t.string "first_name_client", default: ""
    t.string "last_name_client", default: ""
    t.datetime "list_validated_at"
    t.datetime "payed_at"
    t.boolean "is_tranquility", default: false
    t.boolean "is_b2b", default: false
    t.index ["services_id"], name: "index_prospects_on_services_id"
  end

  create_table "prospects_services", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "prospect_id"
    t.uuid "service_id"
    t.index ["prospect_id"], name: "index_prospects_services_on_prospect_id"
    t.index ["service_id"], name: "index_prospects_services_on_service_id"
  end

  create_table "recommandation_services", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "recommandations_id"
    t.uuid "service_id"
    t.index ["recommandations_id"], name: "index_recommandation_services_on_recommandations_id"
    t.index ["service_id"], name: "index_recommandation_services_on_service_id"
  end

  create_table "recommandations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "email"
    t.integer "note"
    t.text "asking_message"
    t.text "recommandation_message"
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.uuid "job_id"
    t.uuid "contractor_id"
    t.uuid "client_id"
    t.string "phone"
  end

  create_table "recommendations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "contractor_id"
    t.string "first_name"
    t.string "last_name"
    t.string "city"
    t.integer "year"
    t.string "phone"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contractor_id"], name: "index_recommendations_on_contractor_id"
  end

  create_table "requirements", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "contractor_id"
    t.boolean "work_authorization"
    t.boolean "french_skill"
    t.boolean "email_box_accessibility"
    t.boolean "bank_account"
    t.boolean "cesu_payment_bank_transfer"
    t.boolean "certificate_professional_reference"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contractor_id"], name: "index_requirements_on_contractor_id"
  end

  create_table "search_requests", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "search_id"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["search_id"], name: "index_search_requests_on_search_id"
  end

  create_table "searches", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "user_id"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "nb_result"
    t.index ["user_id"], name: "index_searches_on_user_id"
  end

  create_table "searches_services", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "search_id"
    t.uuid "service_id"
    t.index ["search_id"], name: "index_searches_services_on_search_id"
    t.index ["service_id"], name: "index_searches_services_on_service_id"
  end

  create_table "selected_contractors_prospects", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "contractor_id"
    t.uuid "prospect_id"
    t.integer "level", default: 0
    t.index ["contractor_id"], name: "index_selected_contractors_prospects_on_contractor_id"
    t.index ["prospect_id"], name: "index_selected_contractors_prospects_on_prospect_id"
  end

  create_table "steps", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.integer "step_number"
    t.string "device"
    t.string "contractor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contractor_id"], name: "index_steps_on_contractor_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.bigint "flat_rate_id"
    t.datetime "subscribe_at"
    t.boolean "as_subscribe"
    t.boolean "offers_left", default: true
    t.boolean "coworkers_left", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "contact_left", default: true
    t.integer "potential"
    t.index ["flat_rate_id"], name: "index_subscriptions_on_flat_rate_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
  end

  create_table "words", force: :cascade do |t|
    t.string "name"
    t.string "cat"
    t.text "definition"
    t.string "example"
    t.string "url"
    t.date "day"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "client_to_offers", "offers"
  add_foreign_key "offer_to_contractors", "offers"
  add_foreign_key "offer_to_services", "offers"
  add_foreign_key "offers_mores", "offers"
end
