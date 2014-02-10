class CreateAssembliesAndParts < ActiveRecord::Migration
  def change
    create_table :assemblies_and_parts do |t|
      t.integer :assembly_id
      t.integer :part_id

      t.timestamps
    end
  end
end
