# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_04_24_103104) do
  create_table "action_text_rich_texts", force: :cascade do |t|
    t.string "name", null: false
    t.text "body"
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["record_type", "record_id", "name"], name: "index_action_text_rich_texts_uniqueness", unique: true
  end

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "bookings", force: :cascade do |t|
    t.string "bookingid"
    t.integer "client_id", null: false
    t.string "booking_productid"
    t.string "no_product"
    t.integer "service_id", null: false
    t.text "bookingdescription"
    t.string "bookingcost"
    t.string "deposit"
    t.datetime "datebooking"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_bookings_on_client_id"
    t.index ["service_id"], name: "index_bookings_on_service_id"
  end

  create_table "clients", force: :cascade do |t|
    t.integer "store_id", null: false
    t.string "clientphone"
    t.string "clientname"
    t.string "clientemail"
    t.string "clientstandard"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["store_id"], name: "index_clients_on_store_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "departmentid"
    t.string "departmentname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "discounts", force: :cascade do |t|
    t.string "discountid"
    t.string "amount"
    t.date "startime"
    t.date "endtime"
    t.string "standard"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.integer "store_id", null: false
    t.string "empid"
    t.string "empname"
    t.string "empphone"
    t.string "salary"
    t.integer "department_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["department_id"], name: "index_employees_on_department_id"
    t.index ["store_id"], name: "index_employees_on_store_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "headers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "manufacturings", force: :cascade do |t|
    t.string "manid"
    t.string "manname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "store_id", null: false
    t.string "orderid"
    t.integer "client_id", null: false
    t.string "order_productid"
    t.string "no_orderproduct"
    t.integer "service_id", null: false
    t.string "ordercost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_orders_on_client_id"
    t.index ["service_id"], name: "index_orders_on_service_id"
    t.index ["store_id"], name: "index_orders_on_store_id"
  end

  create_table "payments", force: :cascade do |t|
    t.string "paymentid"
    t.integer "store_id", null: false
    t.integer "order_id", null: false
    t.integer "booking_id", null: false
    t.integer "discount_id", null: false
    t.string "paymentcost"
    t.datetime "paymentdate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_payments_on_booking_id"
    t.index ["discount_id"], name: "index_payments_on_discount_id"
    t.index ["order_id"], name: "index_payments_on_order_id"
    t.index ["store_id"], name: "index_payments_on_store_id"
  end

  create_table "product_types", force: :cascade do |t|
    t.string "typeid"
    t.string "typename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "productname"
    t.integer "manufacturing_id", null: false
    t.string "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manufacturing_id"], name: "index_products_on_manufacturing_id"
  end

  create_table "purchasings", force: :cascade do |t|
    t.integer "store_id", null: false
    t.integer "product_id", null: false
    t.integer "supplier_id", null: false
    t.string "unit"
    t.integer "no"
    t.datetime "datepurrchasing"
    t.string "purchasingcost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_purchasings_on_product_id"
    t.index ["store_id"], name: "index_purchasings_on_store_id"
    t.index ["supplier_id"], name: "index_purchasings_on_supplier_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.string "ratingid"
    t.string "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responses", force: :cascade do |t|
    t.string "resid"
    t.integer "client_id", null: false
    t.text "response"
    t.integer "rating_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_responses_on_client_id"
    t.index ["rating_id"], name: "index_responses_on_rating_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "serviceid"
    t.string "servicename"
    t.string "servicecost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "store_chains", force: :cascade do |t|
    t.string "chain_number"
    t.string "website"
    t.integer "header_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["header_id"], name: "index_store_chains_on_header_id"
  end

  create_table "stores", force: :cascade do |t|
    t.integer "store_chain_id", null: false
    t.string "storeid"
    t.string "phone_contract"
    t.string "email"
    t.string "description"
    t.string "page"
    t.datetime "open_time"
    t.datetime "close_time"
    t.text "address"
    t.integer "no_employee"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["store_chain_id"], name: "index_stores_on_store_chain_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "supplierid"
    t.string "suppliername"
    t.integer "product_id", null: false
    t.integer "manufacturing_id", null: false
    t.string "costproduct"
    t.integer "producttype_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manufacturing_id"], name: "index_suppliers_on_manufacturing_id"
    t.index ["product_id"], name: "index_suppliers_on_product_id"
    t.index ["producttype_id"], name: "index_suppliers_on_producttype_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "bookings", "clients"
  add_foreign_key "bookings", "services"
  add_foreign_key "clients", "stores"
  add_foreign_key "employees", "departments"
  add_foreign_key "employees", "stores"
  add_foreign_key "orders", "clients"
  add_foreign_key "orders", "services"
  add_foreign_key "orders", "stores"
  add_foreign_key "payments", "bookings"
  add_foreign_key "payments", "discounts"
  add_foreign_key "payments", "orders"
  add_foreign_key "payments", "stores"
  add_foreign_key "products", "manufacturings"
  add_foreign_key "purchasings", "products"
  add_foreign_key "purchasings", "stores"
  add_foreign_key "purchasings", "suppliers"
  add_foreign_key "responses", "clients"
  add_foreign_key "responses", "ratings"
  add_foreign_key "store_chains", "headers"
  add_foreign_key "stores", "store_chains"
  add_foreign_key "suppliers", "manufacturings"
  add_foreign_key "suppliers", "products"
  add_foreign_key "suppliers", "producttypes"
end
