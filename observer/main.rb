require_relative 'subscriber'
require_relative 'delivery_man'
require_relative 'collector'

alice = Subscribers.new("Alice", "okachimachi tokyo")
deliver_man = DeliveryMan.new
collector = Collector.new

alice.add_observer(deliver_man)
alice.add_observer(collector)

alice.cancel_subscription
