class CreateTenderInfos < ActiveRecord::Migration
  def change
    create_table :tender_infos do |t|
      t.references :procurement
      t.references :tenderer
      t.integer :price
      t.boolean :winning, :default => false
      t.timestamps
    end
  end
end
