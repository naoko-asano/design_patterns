# オブザーバー(サブジェクトの変更に関心がある)
# 配達員
class DeliveryMan
  def stop(subscriber)
    puts "#{subscriber.name}への配達を止めます"
  end
end
