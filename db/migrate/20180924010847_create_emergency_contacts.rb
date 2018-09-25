class CreateEmergencyContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :emergency_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone

      t.timestamps
    end
  end
end
