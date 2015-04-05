name := "HulkTCPServer"

version := "1.0"

scalaVersion := "2.11.6"

resolvers += "Typesafe Repository" at "http://repo.typesafe.com/typesafe/releases/"

libraryDependencies += "com.typesafe.akka" % "akka-actor" % "2.2.0"

libraryDependencies += "com.typesafe.akka" % "akka-remote" % "2.2.0"

libraryDependencies +=  "com.typesafe" % "config" % "1.0.2"