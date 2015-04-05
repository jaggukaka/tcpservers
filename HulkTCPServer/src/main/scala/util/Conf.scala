package util

import com.typesafe.config.ConfigFactory

object Conf {

  val config = ConfigFactory.load
  config.checkValid(ConfigFactory.defaultReference)

  val appHostName = config.getString("hello-tcp-server.app.hostname")
  val appPort = config.getInt("hello-tcp-server.app.port")

}
