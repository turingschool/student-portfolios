class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string  :name
      t.string  :email
      t.string  :github_url
      t.string  :resume_url
      t.string  :provider
      t.string  :uid
      t.text    :looking_for
      t.integer :group_id

      t.timestamps
    end
  end
end
