class CreateSections < ActiveRecord::Migration
  
  def change
    create_table :sections do |t|
      t.integer "page_id"  
      # putting foreign keys at top makes them easy to find 
      t.string "name"
      t.integer "position"
      t.boolean "visible", :default => true
      t.string "content_type"
      t.text "content"
      # can have lot more text than a string type
      t.timestamps null: false
    end
    add_index("sections", "page_id")
  end

end
