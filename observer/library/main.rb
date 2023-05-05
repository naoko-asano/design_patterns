require "observer"

class SalesPerson
  include Observable

  def get_contract
    puts "新規契約獲得！"
    # オブジェクトが本当に変更されたかどうかを判定。trueであれば以降の通知を行う。
    changed
    notify_observers
  end
end

class DeliverMan
  def update
    puts "配達する対象が増えました！"
  end
end

class Collector
  def update
    puts "集金する対象が増えました！"
  end
end

sales_person = SalesPerson.new
deliver_man = DeliverMan.new
collector = Collector.new

sales_person.add_observer(deliver_man)
sales_person.add_observer(collector)

sales_person.get_contract
