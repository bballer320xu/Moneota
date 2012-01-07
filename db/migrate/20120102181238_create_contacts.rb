class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.date :birthdate
      t.date :anniversary

      t.timestamps
    end
  end
end
