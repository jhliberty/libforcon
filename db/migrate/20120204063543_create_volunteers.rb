class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :phone_type
      t.boolean :txt_updates
      t.boolean :door
      t.boolean :party
      t.text :other

      t.timestamps
    end
  end
end
