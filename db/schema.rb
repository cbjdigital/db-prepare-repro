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

ActiveRecord::Schema[7.2].define(version: 2024_11_05_105659) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

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

  create_table "documents", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "folder_id"
  end

  create_table "folders", force: :cascade do |t|
    t.string "name"
    t.string "remote_id"
    t.integer "parent_id"
    t.integer "lft", null: false
    t.integer "rgt", null: false
    t.integer "depth", default: 0, null: false
    t.integer "children_count", default: 0, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.boolean "has_photos", default: false, null: false
    t.boolean "has_videos", default: false, null: false
    t.boolean "has_audios", default: false, null: false
    t.boolean "has_documents", default: false, null: false
    t.index ["has_audios"], name: "index_folders_on_has_audios"
    t.index ["has_documents"], name: "index_folders_on_has_documents"
    t.index ["has_photos"], name: "index_folders_on_has_photos"
    t.index ["has_videos"], name: "index_folders_on_has_videos"
    t.index ["lft"], name: "index_folders_on_lft"
    t.index ["parent_id"], name: "index_folders_on_parent_id"
    t.index ["rgt"], name: "index_folders_on_rgt"
    t.index ["slug"], name: "index_folders_on_slug", unique: true
  end

  create_table "pages", force: :cascade do |t|
    t.string "name"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.integer "type"
    t.integer "position"
    t.bigint "document_id"
    t.bigint "video_id"
    t.index ["document_id"], name: "index_pages_on_document_id"
    t.index ["video_id"], name: "index_pages_on_video_id"
  end

  create_table "partnerships", force: :cascade do |t|
    t.integer "person_id"
    t.integer "partner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "marriage_date"
    t.string "marriage_date_parts"
    t.date "divorce_date"
    t.string "divorce_date_parts"
    t.string "marriage_place"
  end

  create_table "people", force: :cascade do |t|
    t.string "forenames"
    t.string "surname"
    t.string "title"
    t.string "gender"
    t.date "birthdate"
    t.date "deathdate"
    t.integer "generation"
    t.integer "position"
    t.integer "childof_generation"
    t.integer "childof_position"
    t.integer "childof_spouse_marriageno"
    t.string "birthdatefeatures"
    t.string "deathdatefeatures"
    t.string "ancestry"
    t.string "type"
    t.string "marriage_person_id"
    t.string "marriage_no"
    t.string "marriagedate"
    t.string "marriage_relation"
    t.string "divorced"
    t.integer "ancestry_depth", default: 0
    t.string "suffix"
    t.string "nickname"
    t.string "birthplace"
    t.string "deathplace"
    t.string "buriedplace"
    t.date "burieddate"
    t.string "marriedplace"
    t.string "birthdateparts"
    t.string "deathdateparts"
    t.string "marriagedateparts"
    t.string "burieddateparts"
    t.text "biography"
    t.boolean "highlight", default: false
    t.boolean "hidden", default: false
    t.string "fullnamedb"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "parent_id"
    t.integer "parent_2_id"
    t.integer "tag_id"
  end

  create_table "people_tags", id: false, force: :cascade do |t|
    t.bigint "person_id"
    t.bigint "tag_id"
    t.index ["person_id"], name: "index_people_tags_on_person_id"
    t.index ["tag_id"], name: "index_people_tags_on_tag_id"
  end

  create_table "photos", force: :cascade do |t|
    t.text "description"
    t.string "filename"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "extension"
    t.string "mime_type"
    t.integer "folder_id"
    t.string "web_view_link"
    t.string "web_content_link"
    t.integer "width"
    t.integer "height"
    t.string "remote_id"
    t.integer "last_update"
    t.string "server"
    t.string "secret"
    t.string "secret_h"
    t.string "secret_k"
    t.string "web_content_link_h"
    t.string "web_content_link_k"
    t.string "web_content_link_o"
    t.integer "position"
  end

  create_table "settings", force: :cascade do |t|
    t.string "key"
    t.string "value_text"
    t.boolean "value_boolean"
    t.integer "value_integer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "data_type"
    t.text "value_rich_text"
    t.bigint "page_id"
    t.json "value_media_types"
    t.index ["page_id"], name: "index_settings_on_page_id"
  end

  create_table "sizes", force: :cascade do |t|
    t.bigint "photo_id"
    t.bigint "video_id"
    t.string "label"
    t.integer "width"
    t.integer "height"
    t.string "source"
    t.string "url"
    t.string "media"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photo_id"], name: "index_sizes_on_photo_id"
    t.index ["video_id"], name: "index_sizes_on_video_id"
  end

  create_table "taggings", force: :cascade do |t|
    t.bigint "tag_id"
    t.string "taggable_type"
    t.bigint "taggable_id"
    t.string "tagger_type"
    t.bigint "tagger_id"
    t.string "context", limit: 128
    t.datetime "created_at", precision: nil
    t.string "tenant", limit: 128
    t.index ["context"], name: "index_taggings_on_context"
    t.index ["tag_id", "taggable_id", "taggable_type", "context", "tagger_id", "tagger_type"], name: "taggings_idx", unique: true
    t.index ["tag_id"], name: "index_taggings_on_tag_id"
    t.index ["taggable_id", "taggable_type", "context"], name: "taggings_taggable_context_idx"
    t.index ["taggable_id", "taggable_type", "tagger_id", "context"], name: "taggings_idy"
    t.index ["taggable_id"], name: "index_taggings_on_taggable_id"
    t.index ["taggable_type", "taggable_id"], name: "index_taggings_on_taggable_type_and_taggable_id"
    t.index ["taggable_type"], name: "index_taggings_on_taggable_type"
    t.index ["tagger_id", "tagger_type"], name: "index_taggings_on_tagger_id_and_tagger_type"
    t.index ["tagger_id"], name: "index_taggings_on_tagger_id"
    t.index ["tagger_type", "tagger_id"], name: "index_taggings_on_tagger_type_and_tagger_id"
    t.index ["tenant"], name: "index_taggings_on_tenant"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "taggings_count", default: 0
    t.index ["name"], name: "index_tags_on_name", unique: true
  end

  create_table "tokens", force: :cascade do |t|
    t.string "access_token"
    t.string "refresh_token"
    t.datetime "expires_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "secret"
    t.string "type"
    t.boolean "refreshable"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "videos", force: :cascade do |t|
    t.string "description"
    t.string "filename"
    t.string "name"
    t.string "extension"
    t.string "mime_type"
    t.bigint "folder_id"
    t.string "web_content_link"
    t.string "web_content_link_o"
    t.integer "width"
    t.integer "height"
    t.text "remote_id"
    t.integer "last_update"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "position"
    t.integer "source", default: 0
    t.index ["folder_id"], name: "index_videos_on_folder_id"
  end

  create_table "wallets", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "parent_id"
    t.integer "lft"
    t.integer "rgt"
    t.integer "depth"
    t.integer "children_count"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "pages", "documents"
  add_foreign_key "pages", "videos"
  add_foreign_key "settings", "pages"
  add_foreign_key "sizes", "photos"
  add_foreign_key "sizes", "videos"
  add_foreign_key "taggings", "tags"
  add_foreign_key "videos", "folders"
end
