# Importing necessary libraries
from pyspark.sql import SparkSession
from pyspark.sql.types import StructType, StructField, StringType, IntegerType

# Creating a SparkSession
spark = SparkSession.builder \
    .appName("Create DataFrame") \
    .getOrCreate()

# Defining the schema for the DataFrame
schema = StructType([
    StructField("Name", StringType(), True),
    StructField("Age", IntegerType(), True),
    StructField("City", StringType(), True)
])

# Creating data for the DataFrame
data = [("Alice", 30, "New York"),
        ("Bob", 25, "Los Angeles"),
        ("Charlie", 35, "Chicago")]

  

# Creating a DataFrame
df = spark.createDataFrame(data, schema)

# Showing the DataFrame
df.show()