require 'ingenico/connect/sdk/connection'

module Ingenico
  module Connect
    module SDK
      # {Ingenico::Connect::SDK::Connection} that supports connection pooling. This is used to more efficiently communicate using HTTP.
      # Connection pooling means that a number of connections are kept alive after use so they can possibly be reused.
      # If the Connection does not do so automatically,
      # the methods _close_idle_connections_ and _close_expired_connections_ can be used to drop connections
      # that are idle for a specified amount of time or that have expired.
      # @see Ingenico::Connect::SDK::DefaultImpl::DefaultConnection
      class PooledConnection < Connection

        # Closes all connections that have not been used for _idle_time_ seconds.
        def close_idle_connections(idle_time)
          raise NotImplementedError
        end

        # Closes all connections that have expired.
        def close_expired_connections
          raise NotImplementedError
        end
      end
    end
  end
end
