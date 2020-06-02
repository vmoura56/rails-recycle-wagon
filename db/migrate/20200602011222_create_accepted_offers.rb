class CreateAcceptedOffers < ActiveRecord::Migration[6.0]
  def change
    create_table :accepted_offers do |t|
      t.references :user, null: false, foreign_key: true
      t.references :offer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
