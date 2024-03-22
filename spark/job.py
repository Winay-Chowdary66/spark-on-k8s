from pyspark.sql import SparkSession

# Initialize Spark session
spark = SparkSession.builder \
    .appName("MySparkJob") \
        .getOrCreate()

        # Sample Spark code
        data = [("Alice", 34), ("Bob", 45), ("Charlie", 28)]
        df = spark.createDataFrame(data, ["Name", "Age"])

        # Perform Spark operations
        df.show()

        # Stop Spark session
        spark.stop()