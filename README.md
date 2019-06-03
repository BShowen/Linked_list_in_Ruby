# Project Linked List
This is my implementation of a linked list in Ruby. It may not be necessary to use a linked list in Ruby since Ruby arrays are not limited by size and they also act very similar to a linked list. However, I want to understand a link list so I decided to create one from scratch using Ruby. If you are unsure what a linked list is please review [here](https://en.wikipedia.org/wiki/Linked_list) but simply put, a linked list is a collection of data elements, sometimes called Nodes, which hold a link pointing to the next data element/Node. 

You may visualize a data element like this `(some_data, pointer-->)` where data is the...data...and the pointer is pointing to the next "data element". So a linked list with two data elements will look like this 
```
(some_data_1, pointer-->(some_data_2, pointer-->)) 
```
In the example above we have the first data element holding `some_data_1` and the pointer is pointing to the next data elemet, which is holding `some_data_2`. The second data element has a pointer that is pointing to nothing, or, `nil`. This is said to be the Tail of the list. The tail of a linked list will always point to nothing, or, `nil` and the Head of the list will always be the first data element in the list. In this case the Head data element is the element holding `some_data_1`. 


Now lets look at a  linked list with three data elements.
```
("some data 1" , pointer-->("some data 2", pointer-->("some data 3",pointer-->)))
```

The data in a linked list can be a number of different things. I dont want to say the data can be "anything at all" because I am unsure how true that is. I am still learning. 

Hopefully you found this useful and informative. 

# Instructions 
###### These instructions assume you are using Ruby 2.5.1 on macOS. You may encounter some bugs if you use a different machine or a different version of Ruby. 

1) Clone or download ths repo onto your computer. 

2) Open terminal and cd into the directory where you have this repo downloaded. 

3) type `ls` and verify you get the following screen, or at least get something very similar with the same files showing up. If you get a different print out then you are probably in the wrong directotry. 

4) Now start up IRB my typing `irb` and hitting enter. 

5) Require in the script by typing `require "./linkedlist.rb"` and you should get the response `true`. 

6) Create the linked list by typing `some_variable = LinkedList.new`. Please see the documentation below for how to manipulate your linked list. 