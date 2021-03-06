ActiveRecord::Schema.define(version: 0) do
  create_table :posts, force: :cascade do |t|
    t.string :title
    t.string :type
    t.integer :location_id
    t.text :body
    t.references :blog
    t.timestamps null: true
  end

  create_table :locations, force: :cascade do |t|
    t.float :lat
    t.float :lng
  end

  create_table :blogs, force: :cascade do |t|
    t.string :name
    t.string :subdomain
    t.timestamps null: true
  end

  create_table :writers, force: :cascade, primary_key: :writer_id do |t|
    t.string :name
    t.timestamps null: true
  end
end
