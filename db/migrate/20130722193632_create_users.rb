class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string	:name
	  t.string	:email
	  t.string	:password
	  t.string	:fish
	  t.string	:salt
	  t.string	:code
	  t.timestamp :expires_at

      t.timestamps
    end
  end
end
