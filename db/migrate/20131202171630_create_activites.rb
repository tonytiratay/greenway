class CreateActivites < ActiveRecord::Migration
  def change
    create_table :activites do |t|
      t.string :titre
      t.text :description
      t.string :typeactivite
      t.string :prix
      t.string :adresse
      t.date :datedebut
      t.date :datefin

      t.timestamps
    end
  end
end
