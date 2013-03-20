class CreateCalcs < ActiveRecord::Migration
  def change
    create_table :calcs do |t|
      t.string :aktsia_nimi
      t.decimal :hind
      t.integer :kogus
      t.decimal :protsent
      t.integer :aastad

      t.timestamps
    end
  end
end
