class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.string :author
    	t.integer :manifesto_id, null: false
    	t.text :body 
    	t.timestamps null: false
    	t.index :manifesto_id
    end
  end
end
