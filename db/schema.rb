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

ActiveRecord::Schema.define(version: 20171211005405) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "bookingdate"
    t.string "status"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bookingdate"], name: "index_bookings_on_bookingdate"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "bookingshowings", force: :cascade do |t|
    t.integer "showing_id"
    t.string "filmtitle"
    t.string "screenname"
    t.text "seat"
    t.decimal "price"
    t.integer "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_bookingshowings_on_booking_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "title"
    t.text "filmcast"
    t.text "plot"
    t.string "poster_url"
    t.string "trailer_url"
    t.integer "runtime"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["filmcast"], name: "index_films_on_filmcast"
    t.index ["plot"], name: "index_films_on_plot"
    t.index ["title"], name: "index_films_on_title"
  end

  create_table "screens", force: :cascade do |t|
    t.string "screenname"
    t.integer "rows"
    t.integer "width"
    t.text "seating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["screenname"], name: "index_screens_on_screenname"
  end

  create_table "showings", force: :cascade do |t|
    t.datetime "slot"
    t.decimal "price"
    t.integer "screen_id"
    t.integer "film_id"
    t.text "seatallocation"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["film_id"], name: "index_showings_on_film_id"
    t.index ["screen_id"], name: "index_showings_on_screen_id"
    t.index ["slot"], name: "index_showings_on_slot"
  end

  create_table "showingseatallocations", force: :cascade do |t|
    t.text "seatallocation"
    t.integer "rows"
    t.integer "width"
    t.integer "showing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["showing_id"], name: "index_showingseatallocations_on_showing_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.boolean "subscribed"
    t.datetime "starttime"
    t.datetime "endtime"
    t.decimal "price"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
