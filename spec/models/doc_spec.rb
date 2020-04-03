require 'rails_helper'

RSpec.describe Doc, type: :model do
  context 'test doc' do

    it 'is not valid when empty' do
      Doc.new.should be_valid
    end

    it 'doc attributes must not be empty' do
      doc = Doc.new
      assert doc.invalid?
      assert doc.errors[:title].any?
      assert doc.errors[:content].any?
    end

  end
end



#create_table "docs", force: :cascade do |t|
#  t.string "title"
#  t.text "content"
#  t.datetime "created_at", precision: 6, null: false
#  t.datetime "updated_at", precision: 6, null: false
#  t.integer "user_id"
#end

#create_table "users", force: :cascade do |t|
#  t.string "email", default: "", null: false
#  t.string "encrypted_password", default: "", null: false
#  t.string "reset_password_token"
#  t.datetime "reset_password_sent_at"
#  t.datetime "remember_created_at"
#  t.datetime "created_at", precision: 6, null: false
#  t.datetime "updated_at", precision: 6, null: false
#  t.index ["email"], name: "index_users_on_email", unique: true
#  t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
#end