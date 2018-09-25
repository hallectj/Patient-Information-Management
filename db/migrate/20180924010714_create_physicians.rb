class CreatePhysicians < ActiveRecord::Migration[5.1]
  def change
    create_table :physicians do |t|
      t.string :family_doctor
      t.string :family_doctor_phone

      t.timestamps
    end
  end
end
