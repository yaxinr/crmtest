class CreateCrmCases < ActiveRecord::Migration
  def change
    create_table :crm_cases do |t|
      t.string :title
      t.integer :isClosed
      t.references :tenant

      t.timestamps
    end
  end
end
