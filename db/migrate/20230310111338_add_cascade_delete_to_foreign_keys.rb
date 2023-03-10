class AddCascadeDeleteToForeignKeys < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key "active_storage_attachments", "active_storage_blobs"
    remove_foreign_key "active_storage_variant_records", "active_storage_blobs"
    remove_foreign_key "architectures", "buildings"
    remove_foreign_key "architectures", "cities"
    remove_foreign_key "armories", "universes"
    remove_foreign_key "cities", "maps"
    remove_foreign_key "creatures", "universes"
    remove_foreign_key "funs", "options"
    remove_foreign_key "funs", "parties"
    remove_foreign_key "jobs", "universes"
    remove_foreign_key "maps", "parties"
    remove_foreign_key "parties", "universes"
    remove_foreign_key "parties", "users"
    remove_foreign_key "players", "parties"
    remove_foreign_key "pnjs", "architectures"
    remove_foreign_key "pnjs", "jobs"
    remove_foreign_key "pnjs", "parties"
    remove_foreign_key "pnjs", "races"
    remove_foreign_key "races", "universes"
    remove_foreign_key "weapons", "armories"
    remove_foreign_key "weapons", "parties"
    remove_foreign_key "weapons", "pnjs"

    add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id", on_delete: :cascade
    add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id", on_delete: :cascade
    add_foreign_key "architectures", "buildings", on_delete: :cascade
    add_foreign_key "architectures", "cities", on_delete: :cascade
    add_foreign_key "armories", "universes", on_delete: :cascade
    add_foreign_key "cities", "maps", on_delete: :cascade
    add_foreign_key "creatures", "universes", on_delete: :cascade
    add_foreign_key "funs", "options", on_delete: :cascade
    add_foreign_key "funs", "parties", on_delete: :cascade
    add_foreign_key "jobs", "universes", on_delete: :cascade
    add_foreign_key "maps", "parties", on_delete: :cascade
    add_foreign_key "parties", "universes", on_delete: :cascade
    add_foreign_key "parties", "users", on_delete: :cascade
    add_foreign_key "players", "parties", on_delete: :cascade
    add_foreign_key "pnjs", "architectures", on_delete: :cascade
    add_foreign_key "pnjs", "jobs", on_delete: :cascade
    add_foreign_key "pnjs", "parties", on_delete: :cascade
    add_foreign_key "pnjs", "races", on_delete: :cascade
    add_foreign_key "races", "universes", on_delete: :cascade
    add_foreign_key "weapons", "armories", on_delete: :cascade
    add_foreign_key "weapons", "parties", on_delete: :cascade
    add_foreign_key "weapons", "pnjs", on_delete: :cascade
  end
end
