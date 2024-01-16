Dir[File.join(__dir__, 'webhooks', '*.rb')].each { |f| require f }
