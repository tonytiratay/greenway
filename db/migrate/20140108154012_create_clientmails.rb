class CreateClientmails < ActiveRecord::Migration
  def change
    create_table :clientmails do |t|
      t.string :mail

      t.timestamps
    end
  end
end
