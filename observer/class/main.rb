class Subject
  def initialize
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def remove_observer(observer)
    @observers.delete(observer)
  end

  def notify_observers
    @observers.each do |observer|
      observer.update
    end
  end
end

class SalesPerson < Subject
  def get_contract
    puts "新規契約獲得！"
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
