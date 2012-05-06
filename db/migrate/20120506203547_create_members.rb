class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
			t.string :name
			t.text :description
			
			t.string :image_file_name
			t.integer :image_file_size
			t.string :image_content_type
			
			t.string :site_url
			
			t.boolean :status, :limit => 1, :default => 0

      t.timestamps
    end
  end
end
