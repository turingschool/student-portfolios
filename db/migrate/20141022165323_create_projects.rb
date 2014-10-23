class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
    	t.string  :name
    	t.string  :subtitle
    	t.string  :description
    	t.string  :github_url
    	t.string  :live_url
    	t.integer :user_id

      t.timestamps
    end
  end
end
