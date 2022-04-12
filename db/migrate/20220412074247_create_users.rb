class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false

      t.string :password_digest, null: false # password_digestにしている理由は、railsに標準で付いているhas_secure_passwordという機能を使った時の命名ルールのため
      t.timestamps
      t.index :email, unique: true
      t.timestamps
    end
  end
end
