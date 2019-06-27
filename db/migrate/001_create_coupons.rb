class CreateCoupons < ActiveRecord::Migration
  def change
    create_table :coupons do |col|
      col.string :coupon_code
      col.string :store
    end
  end
end
