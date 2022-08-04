class LoggerCustom
  def log(prefix, msg)
    puts "#{prefix}: #{msg}"
  end
end

module Log
  APP_PREFIX = "Log"

  @logger = LoggerCustom.new

  def self.error(msg)
    @logger.log("[#{APP_PREFIX}] ERROR", msg)
  end

  def self.info(msg)
    @logger.log("[#{APP_PREFIX}] INFO", msg)
  end
end
