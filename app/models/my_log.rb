class MyLog
  def self.debug(message=nil)
    @@my_log ||= Logger.new("#{Rails.root}/log/my.log")
    @@my_log.debug(message) unless message.nil?
  end
end
