name := "Foo_Application"

version := "1.0"

scalaVersion := "2.12.10"
val sparkVersion = "3.0.1"

libraryDependencies += "org.apache.spark" %% "spark-core" % sparkVersion % "provided"
libraryDependencies += "org.apache.spark" %% "spark-sql" % sparkVersion % "provided"
libraryDependencies += "org.apache.spark" %% "spark-mllib" % sparkVersion % "provided"

libraryDependencies += "org.scalanlp" %% "breeze-natives" % "1.0" % "provided"

//resolvers += "bintray-spark-packages" at "https://dl.bintray.com/spark-packages/maven/"
resolvers += "Spark Package Main Repo" at "https://dl.bintray.com/spark-packages/maven"
addSbtPlugin("org.spark-packages" % "sbt-spark-package" % "0.2.6")

resolvers += "Spark Packages Repo" at "https://repos.spark-packages.org/"
libraryDependencies += "saurfang" % "spark-knn" % "0.3.0"

lazy val depProject = RootProject(uri("git://github.com/saurfang/spark-knn.git#master"))
lazy val root = (project in file(".")).dependsOn(depProject)
