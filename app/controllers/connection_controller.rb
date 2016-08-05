class ConnectionController < WebsocketRails::BaseController
  def initialize_session
     # perform application setup here
    #  controller_store[:message_count] = 0
   end

   # The :client_connected method is fired automatically when a new client connects
 def :client_connected
 end
# The :client_disconnected method is fired automatically when a client disconnects
 def client_disconnected
 end
# The :connection_closed method is fired automatically when a client loses connection without sending a disconnect frame.
 def :connection_closed
 end
end
