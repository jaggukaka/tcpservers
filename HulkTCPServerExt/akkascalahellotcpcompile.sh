#!/bin/sh

scalac -cp ../akka-2.3.9/lib/akka/akka-actor_2.11-2.3.9.jar:../../scala-2.11.6/lib/scala-library.jar:../../scala-2.11.6/lib/config-1.2.1.jar:. ../HulkTCPServer/src/main/scala/util/Conf.scala
scalac -cp ../akka-2.3.9/lib/akka/akka-actor_2.11-2.3.9.jar:../../scala-2.11.6/lib/scala-library.jar:../../scala-2.11.6/lib/config-1.2.1.jar:. ../HulkTCPServer/src/main/scala/server/Server.scala
scalac -cp ../akka-2.3.9/lib/akka/akka-actor_2.11-2.3.9.jar:../../scala-2.11.6/lib/scala-library.jar:../../scala-2.11.6/lib/config-1.2.1.jar:. ../HulkTCPServer/src/main/scala/handler/Handler.scala
scalac -cp ../akka-2.3.9/lib/akka/akka-actor_2.11-2.3.9.jar:../../scala-2.11.6/lib/scala-library.jar:../../scala-2.11.6/lib/config-1.2.1.jar:. ../HulkTCPServer/src/main/scala/handler/EchoHandler.scala
scalac -cp ../akka-2.3.9/lib/akka/akka-actor_2.11-2.3.9.jar:../../scala-2.11.6/lib/scala-library.jar:../../scala-2.11.6/lib/config-1.2.1.jar:. ../HulkTCPServer/src/main/scala/handler/HelloWorldHandler.scala
scalac -cp ../akka-2.3.9/lib/akka/akka-actor_2.11-2.3.9.jar:../../scala-2.11.6/lib/scala-library.jar:../../scala-2.11.6/lib/config-1.2.1.jar:. ../HulkTCPServer/src/main/scala/server/TcpServer.scala
scalac -cp ../akka-2.3.9/lib/akka/akka-actor_2.11-2.3.9.jar:../../scala-2.11.6/lib/scala-library.jar:../../scala-2.11.6/lib/config-1.2.1.jar:. ../HulkTCPServer/src/main/scala/Main.scala