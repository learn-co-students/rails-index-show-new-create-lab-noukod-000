class CouponsController < ApplicationController
before_action :set_coupon, only: :show
  def index
    @coupons = Coupon.all
  end

  def show
    # @coupon = Coupon.find(params[:id])
  end

  def new
   end

  def create
    # session[:form_params] = params.inspect
    # redirect_to new_coupon_path
    @coupon = Coupon.new
    @coupon[:coupon_code] = params[:coupon][:coupon_code]
    @coupon[:store] = params[:coupon][:store]
    @coupon.save
    redirect_to coupon_path(@coupon)
  end
  private

  def set_coupon
    @coupon = Coupon.find(params[:id])
  end
end
