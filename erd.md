
**Model the following entity relation requirement**
**A system has many shops. A shop has many products, which can fall into one or many categories. The products can have different prices on different dates.**
**The solution to this can be an ER diagram with crow-foot notation, or it can be a text file that lists relevant classes and has active record relation statements.**

Solution
created erd using [dbdiagram](https://dbdiagram.io/d/marketshop-657021b856d8064ca07ae832)
by importing the schema.rb file.
I have assumed system as market here.
```
ActiveRecord::Schema[7.1].define(version: 2023_12_06_075513) do
  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_products", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "category_id", null: false
  end

  create_table "markets", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "prices", force: :cascade do |t|
    t.integer "product_id", null: false
    t.decimal "price", precision: 8, scale: 2
    t.datetime "applicable_from"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_prices_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "shop_id", null: false
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_products_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.integer "market_id", null: false
    t.string "name"
    t.string "contact"
    t.string "pan_no"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["market_id"], name: "index_shops_on_market_id"
  end

  add_foreign_key "prices", "products"
  add_foreign_key "products", "shops"
  add_foreign_key "shops", "markets"
end
```
