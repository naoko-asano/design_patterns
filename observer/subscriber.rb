require_relative 'subject'

# 新聞購読者
class Subscribers
  include Subject

  attr_accessor :name, :address

  def initialize(name, address)
    super()
    @name = name
    @address = address
    @is_active = true
  end

  def cancel_subscription
    @is_active = false
    notify_observers
  end
end
