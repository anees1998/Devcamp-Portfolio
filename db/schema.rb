
ActiveRecord::Schema[7.0].define(version: 2022_11_19_140922) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blogs", force: :cascade do |t|
    t.string "Title"
    t.text "Body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status", default: 0
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "scope"
    t.datetime "created_at"
  end

  create_table "portfolios", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.text "main_image"
    t.text "thumb_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "title"
    t.integer "percent_utilized"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
