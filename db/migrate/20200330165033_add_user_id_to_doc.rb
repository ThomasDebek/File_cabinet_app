# frozen_string_literal: true

class AddUserIdToDoc < ActiveRecord::Migration[6.0]
  def change
    add_column :docs, :user_id, :integer
  end
end
