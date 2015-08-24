class AddManifesto < ActiveRecord::Migration
  def change
  	create_table :manifestos do |t|
  		t.string :name
  		t.string :organizer
  		t.integer :happiness, default: 0
  		t.integer :completion, default: 0
  		t.timestamps null: false
  	end
  end
end
