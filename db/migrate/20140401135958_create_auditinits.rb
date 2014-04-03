class CreateAuditinits < ActiveRecord::Migration
  def change
    create_table :auditinits do |t|
      t.string :a_title
      t.string :a_purpose
      t.string :a_scope
      t.string :a_summary
      t.date :a_start_date
      t.date :a_end_date
      t.date :a_close_date
      t.date :a_target_date
      t.text :a_note
      t.references :catvalues

      t.timestamps
    end
  end
end
