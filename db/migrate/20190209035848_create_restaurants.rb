# frozen_string_literal: true

# migration to create restaurants table
class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :address
      t.string :phone_number
      t.string :category

      t.timestamps
    end
  end
end
