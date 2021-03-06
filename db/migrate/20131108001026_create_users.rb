class CreateUsers < ActiveRecord::Migration
	def up
		create_table :users do |t|
			#t.string :user_id
			t.string :email
			#t.string :password_digest
			t.string :name
			t.string :provider
			t.string :uid
			t.string :session_token
			t.timestamps
			t.references 'players'
		end
	end
	
  def down
    drop_table :users
  end
end
