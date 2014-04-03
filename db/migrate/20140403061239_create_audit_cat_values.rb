class CreateAuditCatValues < ActiveRecord::Migration
  def change
    create_table :audit_cat_values,:id => false do |t|
      t.references :auditinits
      t.references :categories
      t.references :catvalues
      t.timestamps
    end
    add_index :audit_cat_values, :auditinits_id
    add_index :audit_cat_values, :categories_id
    add_index :audit_cat_values, :catvalues_id
  end
end
