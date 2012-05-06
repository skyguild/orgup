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


			## Database authenticatable
			t.string :email,              :null => false, :default => ""
			t.string :encrypted_password, :null => false, :default => ""

			## Recoverable
			t.string   :reset_password_token
			t.datetime :reset_password_sent_at

			## Rememberable
			t.datetime :remember_created_at

			## Trackable
			t.integer  :sign_in_count, :default => 0
			t.datetime :current_sign_in_at
			t.datetime :last_sign_in_at
			t.string   :current_sign_in_ip
			t.string   :last_sign_in_ip

			t.timestamps
    end
  end
end
