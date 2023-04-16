# オブザーバー(サブジェクトの変更に関心がある)
# 集金係
class Collector
  def stop(expired_subscribers)
    puts "次回以降、#{expired_subscribers.name}への集金は不要です"
  end
end
