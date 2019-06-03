# Project Linked List
This is my implementation of a linked list in Ruby. It may not be necessary since Ruby arrays are not limited by size and they also act very similar to a linked list. However I want to understand a link list so I decided to create one from scratch using Ruby. If you are unsure what a linked list is please review [here](https://en.wikipedia.org/wiki/Linked_list) but simply put a linked list is a collection of data elements which hold a link pointing to the next data element. 

You may visualize a data element like this `(data, pointer-->)` where data is the...data...and the pointer is pointing to the next "data element". So a linked list with two data elements will look like this 
```
(data, pointer-->(data, pointer-->)) 
```
a linked list with three data elements will look like this 
```
(data, pointer-->(data, pointer-->(data,pointer-->)))
```