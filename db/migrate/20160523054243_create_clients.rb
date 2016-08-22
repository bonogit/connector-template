class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :xml_endpoint
      t.string :mk_apikey
      t.string :mk_endpoint
      t.boolean :init_checker,  default: false

      t.timestamps null: false
    end
  end
end
