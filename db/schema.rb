# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20141105152644) do

  create_table "categories", force: true do |t|
    t.string   "categoria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cities", force: true do |t|
    t.string   "ciudad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "iniciandos", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "iniciandos", ["email"], name: "index_iniciandos_on_email", unique: true
  add_index "iniciandos", ["reset_password_token"], name: "index_iniciandos_on_reset_password_token", unique: true

  create_table "model_tables", force: true do |t|
    t.string   "modelo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_products", force: true do |t|
    t.datetime "fechaEmision"
    t.datetime "fechaVencimiento"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "product_types", force: true do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: true do |t|
    t.string   "nombre"
    t.string   "modelo"
    t.string   "marca"
    t.integer  "precio"
    t.string   "categoria"
    t.string   "tipo"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "promocions", force: true do |t|
    t.string   "nombre"
    t.integer  "precio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pruebas", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pruebas", ["email"], name: "index_pruebas_on_email", unique: true
  add_index "pruebas", ["reset_password_token"], name: "index_pruebas_on_reset_password_token", unique: true

  create_table "queries", force: true do |t|
    t.string   "nombre"
    t.string   "email"
    t.text     "consulta"
    t.text     "respuesta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trademarks", force: true do |t|
    t.string   "marca"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_types", force: true do |t|
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: true do |t|
    t.string   "nombre"
    t.string   "apellidoPat"
    t.string   "apellidoMat"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "ciudad"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "tipo",                   default: 1
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
