# Fundamentals Theory

## What is Spark ?
Spark is unified computing engine and set of libraries for parallel data processing on computer clusters.

- **Unified** : 
    - Imagine you have a toolbox that contains all the tools you need for different tasks: hammer for nails, screwdriver for screws, wrench for bolts, etc. 

    - Similarly, Spark is like a toolbox that provides all the tools you need for` processing different types of data tasks, like analyzing sales data, processing streaming data from sensors, or training machine learning models.` Instead of needing separate tools for each task, Spark offers a unified platform where you can do all these things using the same set of tools.

- **Computing Engine:** 
    - Think of the computing engine in Spark as the engine of a car. It's what makes everything run smoothly under the hood. 

    - In Spark, the `computing engine is responsible for managing and coordinating all the tasks you want to perform on your data.` For example, if you want to count the number of words in a large text file, the computing engine will divide the task into smaller pieces and distribute them across multiple computers in a cluster, making the processing faster and more efficient.

- **Clusters:** 
    - Imagine you have a big group project to finish, and you have a team of friends to help you. Each friend has their own set of skills and resources to contribute to the project. 
    - In Spark, a cluster is like your team of friends. `It's a group of computers (or nodes) that work together to process your data. Each computer in the cluster contributes its processing power, memory, and storage to help complete your data tasks faster.` The more computers you have in your cluster, the more work you can do in parallel, making your data processing tasks faster and more scalable.

- **Parallel Processing:** 
    - Let's say you have a big pile of Lego blocks that you need to sort into different colors. Instead of sorting them one by one, you can divide the pile into smaller piles and ask your friends to help you sort them simultaneously. Each friend can work on their own pile independently, making the sorting process much faster. 

    - In Spark, parallel processing works similarly.` Instead of processing your data sequentially on one computer, Spark divides your data into smaller chunks and processes them in parallel across multiple computers in a cluster.` This allows Spark to process large datasets much faster than traditional single-computer systems.

## 5v of Big Data ?
- **Volume:** Imagine you run an e-commerce website, and you're tracking every customer interaction, including clicks, purchases, and page views. Over time, you're collecting millions of data points. This `massive amount of data` is what we refer to as "volume" in big data.

- **Velocity:** Suppose you're monitoring social media for mentions of your brand. Every second, there are hundreds of tweets, comments, and posts mentioning your brand. Keeping up with this `constant stream of data in real-time` is an example of dealing with high velocity in big data.

- **Variety:** Your business receives data from various sources, such as customer transactions, website logs, social media interactions, and sensor data from IoT devices. Each of these data sources comes in different formats: `structured (like databases), semi-structured (like JSON), and unstructured (like text).` `Managing and analyzing this diverse range of data types` represents the variety aspect of big data.

- **Veracity:** Let's say you're analyzing customer feedback data. Some of the feedback might be incomplete, misspelled, or contradictory. `Ensuring the accuracy and reliability of this data, despite its imperfections,` is a challenge related to veracity in big data.

- **Value:** Finally, imagine you analyze all the data from your e-commerce website and discover patterns indicating which products are most popular among certain demographics. You use this insight to personalize product recommendations for different customer segments, leading to increased sales. The `value derived from analyzing this big data is the actionable insight that drives business decisions and boosts profitability`.

## Why Apache Spark ?

- **Speed and Performance**: Spark is known for its speed and performance.expand_more It's designed to efficiently handle large datasets in parallel across clusters of machines.expand_more This makes it a good option for tasks that require fast turnaround times.expand_more

- **Unified Analytics Engine**: Spark is a unified analytics engine, meaning it can be used for various data processing tasks, including batch data processing, real-time streaming, SQL queries, machine learning, and graph processing.expand_more This eliminates the need for multiple tools for different tasks, simplifying your data pipeline.

- **Ease of Use**: Spark supports multiple programming languages, including Scala, Java, Python, and R. This allows developers to use the language they're most comfortable with, reducing the learning curve.expand_more

- **Fault Tolerance**: Spark is designed to be fault-tolerant.expand_more If a node in the cluster fails, Spark can automatically recover the computation on another node.expand_more This ensures your jobs continue running even in case of hardware failures.

- **Open-Source**: Spark is an open-source project with a large and active community.expand_more This means it's free to use, and there are many resources available for learning and getting help.


## Spark Ecosystem

![Spark Ecosystem image](https://miro.medium.com/v2/resize:fit:828/format:webp/1*UsRTz2Xlz6hnhj5cWnCtcQ.png)

**Here's an analogy:** Imagine a bakery (Spark) that needs to produce a large quantity of bread (data processing).

``Spark Core`` is the core kitchen staff responsible for overall management, recipe execution (data processing tasks), and ensuring ingredients (data) are available.

``Spark Libraries`` are specialized chefs who can bake specific types of bread (e.g., sourdough for Spark SQL, croissants for MLLib).

``Spark Engine`` is the entire bakery operation, including the core staff, specialized chefs, and ovens (cluster resources).

``Cluster Manager`` is the delivery service that assigns ovens (resources) to different baking orders (Spark applications).

``Storage`` is the pantry (distributed file system) and refrigerator (database) where the bakery stores ingredients (data).

## Spark Architecture

*Apache Spark utilizes a master-slave architecture, consisting of several key components that work together to distribute and process data across a cluster of machines.*

![](https://www.cloudduggu.com/spark/architecture/spark-execution.png)

- **Spark Driver**: This is the program that coordinates the execution of a Spark application. It runs on the master node of the cluster and is responsible for:

    - Defining the computations to be performed on the data.
    - Dividing the work into smaller tasks.
    - Scheduling tasks on the worker nodes.
    - Monitoring the execution of tasks.

- **Executors**: These are processes that run on the worker nodes of the cluster. They are responsible for executing the tasks assigned by the driver. Each Spark application has its own set of executors that run for the duration of the application.

- **Cluster Manager**: This is an external service that manages resources in the cluster. Spark can work with different cluster managers like `YARN (Hadoop Yarn), Mesos, or its own standalone` cluster manager. The cluster manager allocates resources (CPU, memory) to Spark applications based on their needs.

    - `Application Master` is just a broker that negotiates resources with the Resource Manager and then after getting some container it make sure to launch tasks(which are picked from scheduler queue) on containers.

- **Worker Nodes**: These are the machines in the cluster that run the executors. They provide the processing power and memory needed to execute the tasks of a Spark application


## Transformation and Action

### Transformations
In Apache Spark, transformations are process that take an existing data frame and turn it into a new one. Consider transformations as the cooking equivalent of recipe steps. With each transformation, you take your raw ingredients (data) and turn them into a new dish (new DF) by mixing, filtering, or shaping them.

There are two types are transformations

- **Narrow Transformation** : Transformations that do not result in data movement between partitions are called Narrow transformations.

    - map
    - flatMap
    - filter
    - union
    

- **Wide Transformation** : Transformations that involve data movement between partitions are called Wide transformations or shuffle transformations.

    - groupByKey
    - aggregate
    - join
    - repartition



### Actions 
Actions are operations that take a data frame and produce a result. Consider actions as the cooking equivalent of serving the dish.

- show
- count
- collect
- first
- head