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

---
## 5v of Big Data ?
- **Volume:** Imagine you run an e-commerce website, and you're tracking every customer interaction, including clicks, purchases, and page views. Over time, you're collecting millions of data points. This `massive amount of data` is what we refer to as "volume" in big data.

- **Velocity:** Suppose you're monitoring social media for mentions of your brand. Every second, there are hundreds of tweets, comments, and posts mentioning your brand. Keeping up with this `constant stream of data in real-time` is an example of dealing with high velocity in big data.

- **Variety:** Your business receives data from various sources, such as customer transactions, website logs, social media interactions, and sensor data from IoT devices. Each of these data sources comes in different formats: `structured (like databases), semi-structured (like JSON), and unstructured (like text).` `Managing and analyzing this diverse range of data types` represents the variety aspect of big data.

- **Veracity:** Let's say you're analyzing customer feedback data. Some of the feedback might be incomplete, misspelled, or contradictory. `Ensuring the accuracy and reliability of this data, despite its imperfections,` is a challenge related to veracity in big data.

- **Value:** Finally, imagine you analyze all the data from your e-commerce website and discover patterns indicating which products are most popular among certain demographics. You use this insight to personalize product recommendations for different customer segments, leading to increased sales. The `value derived from analyzing this big data is the actionable insight that drives business decisions and boosts profitability`.
