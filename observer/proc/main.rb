module Subject
  def initialize
    @observers = []
  end

  def add_observer(&observer)
    @observers << observer
  end

  def remove_observer(observer)
    @observers.delete(observer)
  end

  def notify_observers
    @observers.each do |observer|
      observer.call
    end
  end
end

class SalesPerson
  include Subject

  def get_contract
    puts "新規契約獲得！"
    notify_observers
  end
end

sales_person = SalesPerson.new

sales_person.add_observer{  puts "配達する対象が増えます！" }
sales_person.add_observer{  puts "集金する対象が増えます！" }

sales_person.get_contract
