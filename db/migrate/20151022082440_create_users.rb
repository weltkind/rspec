class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.datetime :add_date
      t.string :name
      t.string :email

      t.timestamps null: false
    end
  end
end
