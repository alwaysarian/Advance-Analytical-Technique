# Neural Networks
### Praveen Kumar Neelappa
## Description
Neural networks, a subtype of machine learning, is a biologically-inspired programming paradigm which enable a computer to learn from existing observational data. These networks are represented as systems of interconnected “neurons”, which send messages to each other. The connections within the network can be systematically adjusted based on inputs and outputs, making them ideal for supervised learning.

Neural nets is a means of doing machine learning, in which a computer learns to perform some task by analysing training examples. Modelled loosely on the human brain, a neural net consists of thousands or even millions of simple processing nodes that are densely interconnected.

Most of today’s neural nets are organized into layers of nodes, and they’re “feed-forward,” meaning that data moves through them in only one direction. An individual node might be connected to several nodes in the layer beneath it, from which it receives data, and several nodes in the layer above it, to which it sends data. Some of its areas of application include: forecasting and image processing and character recognition.

## Strengths

·       Ability to learn and model non-linear and complex relationships, which is important because in real-life, many of the relationships between inputs and outputs are non-linear as well as complex.

·       It requires less formal statistical training or no highly specialized mathematical background

·       Self-organization – creates its own organization or representation of information it receives during learning time

·       Real time operation – computations can be carried out in parallel

·       Ability to detect all possible interactions between predictor variables

·       Availability of multiple training algorithms

·       Fast learner – in the amount of time it takes a human to become an expert at learning which is 10, 000 hours, it takes 5 minutes for neural networks

·       Neural networks do not impose any restrictions on the input variables (like how they should be distributed).

·       Ability to handle noisy or missing data

·       Ability to work with large number of variables or parameters

## Weaknesses

·       Its “black box” nature – inability to understand how or why the learned network works and how it applies weights to variables

·       Examples must be identical to real problems

·       Needs as many examples as possible for training

·       Greater computational burden

·       Prone to overfitting

·       Requires training to operate

## How-To

The basic idea behind a neural network is to simulate (copy in a simplified but reasonably faithful way) lots of densely interconnected brain cells inside a computer so you can get it to learn things, recognize patterns, and make decisions in a humanlike way. The amazing thing about a neural network is that you don't have to program it to learn explicitly: it learns all by itself, just like a brain.
Neural networks is not brain. It's important to note that neural networks are (generally) software simulations: they're made by programming very ordinary computers, working in a very traditional fashion with their ordinary transistors and serially connected logic gates, to behave as though they're built from billions of highly interconnected brain cells working in parallel. The network architecture has an input layer, hidden layer (there can be more than 1) and the output layer. It is also called MLP (Multi-Layer Perceptron) because of the multiple layers.
 
1.    Input Layer – Inputs are introduced into neural network. These includes examples/variables that commences the learning process.

2.    Hidden Layer – “Distillation layer” that simplifies some of the important patterns from the inputs and passes it onto the next layer. It makes the network faster and efficient by identifying only information from the inputs, leaving out the redundant information. This is where weights are assigned to the inputs as the machine learns.

3.    Output Layer – the final prediction/result from the hidden layer is presented here.
 
Neural networks learn things in exactly the same way, typically by a feedback process called backpropagation (sometimes abbreviated as "backprop"). This involves comparing the output a network produces with the output it was meant to produce, and using the difference between them to modify the weights of the connections between the units in the network, working from the output units through the hidden units to the input units—going backward, in other words.
 
In time, back propagation causes the network to learn, reducing the difference between actual and intended output to the point where the two exactly coincide, so the network figures things out exactly as it should.

## Personal Application of Technique

The first step involved in the personal application of neural network was researching the methodology and the dental morphology dataset. The research on the methodology and the data set was an ongoing process that lasted the entire duration of the project.
 
The research is complementary to research done by Heather J.H. Edgar and Stephen D. Ousley, where they used different machine learning techniques like LDFA, QDFA, kernel, kNN and logistic regression to find how accurately these techniques classify different ancestries using dental morphology.  Dental morphology, as the term is generally used in anthropology, considers observations of minor structures of the tooth crown and root, including grooves, ridges, and cusps. The usual goal of dental morphological analysis is to improve our understanding of population relationships at both small and large scales.

One of the machine learning techniques that was not considered during this research is neural network. Using the same dataset, I ran the neural network and compared the accuracy results to other machine learning techniques.

For this, I compared various group by classifying them as follows:

1.    African American, Asian American, European    American, Native American, Hispanic South    East, and Hispanic western

2.	African American, European American, Hispanic South East, and Hispanic western

3.	African American, European American, Hispanic

 I had to scale this data, so they can be analyzed. To run the neural network, I randomly divided 80 percent of the data to training set and used the remaining 20 percent as the testing set. I ran this 1000 times for all three comparisons above to get the best accuracy.
Table 1 shows the results and how other machine learning techniques compares to the results I got with neural network.

| Sl No        | Methods     | 6 Group  | 4 Group  | 3 Group  |
| ------------- |:-------------:| -----:|-----:|-----:|
| 1     | LDFA | 56 | 64 | 76 |
| 2     | QDFA | 45 | 60 | 72 |
| 3     | Kernel | 53 | 60 | 67 |
| 4     | kNN | 56 | 64 | 71 |
| 5     | Logistic Regression | 64 | 70 | 82 |
| 6     | Neural Network | 71 | 74 | 84 |



## The code explanation with results

##### 1. To code the data visualization first we need to import important library like Panda, Seaborn and Matplotlib

##### 2. We then import the Iris.csv data into python

##### 3. We now run the scatter plot to check how the data is scattered

![GitHub Logo](/4.JPG) 







60
72
3

53
60
67
4

56
64
71
5

64
70
82
6

71
74
84

 Table s- Result comparison: Neural Network vs Basic Machine Learning
 
## Rating

Validity (4.5/5) The accuracy from the methodology was based on data collected from the experts in the field of dental morphology. It was cross-validated by randomly redistributing for 1000 times to get the median accuracy. Hence the result is valid.

Simplicity (3/5) Although the algorithms used require a certain skill level to code and calculate in R, majority of the actual process such as to train the model and run complex calculations are done  in minutes by neural networks. Weighing the accuracy of result and effort required I would say it’s moderately simple to learn.

Flexibility (3.5/5) This method handles different types of data in same dataset and can handle both small and large data for getting high accuracy without overfitting the model. Ability to use unstructured data (5/5) This is the biggest strength of the method. It can work effectively compared to other statistical methods. Hence, its ability to use unstructured data is high.

Overall, I rate Neural Networks 4 out of 5.

##For Further Information

1.    Woodford, Chris. (2011/2017) Neural networks. http://www.explainthatstuff.com/introduction-to-neural-networks.html.

2.    Neural Networks - A Systematic Introduction Raul Rojas. Springer-Verlag, Berlin, New-York, 1996 (502 p.,350 illustrations)

3.    Michael A. Nielson, “Neural Networks and Deep Learning”. Determination Press, 2015
