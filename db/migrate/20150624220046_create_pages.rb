class CreatePages < ActiveRecord::Migration
  
  def up	
    create_table :pages do |t|
      t.integer "subject_id" #foreign id
      # allows pages to know what their parent subject is by using that id
      # another way to write above is: t.references :subject
      t.string "name"
      t.string "permalink"
      t.integer "position"
      t.boolean "visible", :default => false
      t.timestamps null: false
    end
  	add_index("pages","subject_id") # all foreign keys should have an index
  	add_index("pages", "permalink") 
  	# this is how we'll lookup pages, it will be handy to have index on it
  end

  def down
  	drop_table :pages
  end

end
