class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.string :description
      t.string :status, default: "backlog"

      t.timestamps null: false
    end
  end
end
