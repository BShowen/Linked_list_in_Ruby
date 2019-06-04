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

1) Clone or download ths repo onto your computer by clicking the "clone or download" button at the top right of this page. 

2) Open terminal and cd into the directory where you have this repo downloaded. 

3) Type `ls` and verify you get the following screen, or at least get something very similar with the same files showing up. If you get a different print out then you are probably in the wrong directotry. 
![screen shot](https://github.com/BShowen/Linked_list_in_Ruby/blob/master/screenshots/screen_shot_1.png "screen shot")

4) Now start up IRB by typing `irb` and hitting enter. 

5) Require in the script by typing `require "./linkedlist.rb"` and you should get the response `true`. 

6) Create the linked list by typing `some_variable = LinkedList.new`. Please see the documentation below for how to manipulate your linked list. 

# Documentation 

#### There a number of different methods that are built into the LinkedList class that allow you to manipulate your linked list. 

### Initialize a list
Calling LinkedList.new will initialize an empty linked list. The head and tail node are set to `nil` by default and the size is 0 by default. 
Example. 
```
list = LinkedList.new 
list.size 
=> 0
list.head 
=> nil
list.tail
=> nil
```

### append(data)
This allows you to add data to your linked list. This function returns the added node, and also accepts 0 - 1 arguments. An argument passed in will be set as the data for that appended node. If no argument is passed then the data for that node is nil. 
Example. 
```
list = LinkedList.new
list.append("some_data")
=> #<Node:0x00007fd5bd808e60 @value="some_data", @next_node=nil>
```

### prepend(data)
This allows you to prepend data to to head of your list. This function returns the prepended node and also accepts 0 - 1 arguments. An argument passed in will be set as the data for that prepended node. If no argument is passed then the data for that node is nil. 
Example.
```
list = LinkedList.new
list.prepend("prepended data")
=> #<Node:0x00007fd5bd808e60 @value="some_data", @next_node=nil>
```

### at(index)
This allows you to get the node at the given index. 
Example.
```
list = LinkedList.new 
list.append("some_data_1")
list.append("some_data_2")
list.at(1)
=> #<Node:0x00007fd5bd808e60 @value="some_data_2", @next_node=nil>
```

### pop
This allows you to pop/remove the last node in the list. This function accepts 0 arguments and returns the popped node. The tail node will be updated automatically. If no items can be popped then pop returns nil. 
Example
```
list = LinkedList.new
list.append("some_data_1")
list.pop 
=> #<Node:0x00007fd5bd808e60 @value="some_data_1", @next_node=nil>

empty_list = LinkedList.new
empty_list.pop
=> nil 
```

### contains?(data)
This function allows you to see if your list contains the provided data. This function accepts only one arguemtn and returns a boolean value. This function works recursively, so an extremely large list may result in stack overflow. 
Example
```
new_list = LinkedList.new 
new_list.append("data_1")
new_list.append("data_2")

new_list.conatins?("data_3")
=> false
new_list.contains?("data_2")
=> true
```

### find(data)
This function allows you to see if your list contains the provided data, and if it does it returns the index where the data is located otherwise returns nil. This function accepts 0 - 3 arguments. Please only provide this function with 1 argument (data) or you will receive an error or an infinite loop. This function works recursively with the last 2 arguments set by default. 
Example
```
new_list = LinkedList.new
new_list.append("some_data_1")
new_list.append("some_data_2")

new_list.find("some_data_3")
=> nil
new_list.find("some_data_2")
=> 1
```

### to_s
This function replaces Ruby's defualt to_s and returns your list in this format
`"( data ) -> ( data ) -> ( data ) -> nil"`
Example
```
    list = LinkedList.new 
    list.append("some_data_1")
    list.append("some_data_2")

    list.to_s
    => "( some_data_1 ) -> ( some_data_2 ) -> nil"
```

### insert_at(index, data)
This function allows you to do something that is not necessarily attributed to linked lists. With this function you can insert some data into the list at a given index, similar to an array. Returns the size of the linked list. 
Exmaple. 
```
list = LinkedList.new
list.append("some_data_1")
list.append("some_data_2")
list.to_s 
=> "( some_data_1 ) -> ( some_data_2 ) -> nil"

list.insert_at(1, "some_data_1.5")
=> 3
list.to_s
=> "( some_data_1 ) -> ( some_data_1.5 ) -> ( some_data_2 ) -> nil"
```

### reomve_at(index)
This function allows you to do something that is not necessarily attributed to linked lists. With this function you can insert some data into the list at a given index, similar to an array. Returns the size of the linked list. 
Exmaple. 
```
list.to_s 
=> "( some_data_1 ) -> ( some_data_1.5 ) -> ( some_data_2 ) -> nil"

list.reomve_at(1)
=> 2

list.to_s 
=> "( some_data_1 ) -> ( some_data_2 ) -> nil"
```