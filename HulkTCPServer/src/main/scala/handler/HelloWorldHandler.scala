package handler

/**
 * Created by jreddypyla on 3/22/15.
 */
import akka.actor._
import akka.util.ByteString
import akka.io.Tcp.Write

object HelloWorldHandlerProps extends HandlerProps {
  def props(connection: ActorRef) = Props(classOf[HelloWorldHandler], connection)
}

class HelloWorldHandler(connection: ActorRef) extends Handler(connection) {

  /**
   * If the message is Hello, World is returned, otherwise incoming message is returned.
   */
  def received(data: String) {
    val trimmed = data.trim;

    if ("Hello".equalsIgnoreCase(trimmed)) {
      connection ! Write(ByteString("World" + "\r\n"));
    } else {
      connection ! Write(ByteString(data + "\n"));
    }
  }
}
