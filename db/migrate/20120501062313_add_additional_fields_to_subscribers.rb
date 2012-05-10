class AddAdditionalFieldsToSubscribers < ActiveRecord::Migration
  def change
    add_column :subscribers, :first_name, :string

    add_column :subscribers, :last_name, :string

    add_column :subscribers, :address, :string

    add_column :subscribers, :address_two, :string

    add_column :subscribers, :city, :string

    add_column :subscribers, :state, :string

    add_column :subscribers, :phone, :string

  end
end
