## Question 1:
A class is a way of representing data and methods that manipulate or work on that data in one package.
to declare a class there are two parts you need to define, the private part which often holds the data members 
and the public part which holds the member functions.

## Question 2:
A class accomplishes abstraction by separating the public interface (member functions) from the specifics of the implementation
of these methods The public interface represents the abstraction component of the design because if you look at the public
interface you will only see the names of the member functions and not the definitions of those functions.

A class accomplishes encapsulation by gathering the implementation details together and separating them from the abstraction.
one example of encapsulation is placing class function definitions in a separate file from the class declaration.

A class accomplishes data-hiding by putting member data into the private section of the class thus restricting the user
(user of the class) from accessing them and only gaining access to them through the public interface which the class 
creator provided for him. Data hiding not only prevents the user of the class from accessing data directly, but it also
absolves user from needing to know how the data is represented.

##Question 3:
Object is an instance of a class.

## Question 4:
for example if we create two objects of the same class, we can use the same member 
functions (same code) for both objects but will operate on different data.

##Question 6:
class constructors are called when an object is created.
class destructor are called when deleting an existing object, that can be done by the user of the class by using the 
destructor method directly or at the end of the block which the object has been declared.

##Question 8:
its a constructor which takes no arguments that is used to create an object when you don’t provide
explicit initialization values. if you don't create any constructors, class will provide a default constructor
which allows the user to declare object like this *class_name object_name();*. but if you create any constructor, the class 
will not provide a default constructor and if you want you can add one yourself which is like declaring constructor but takes no argument.
one advantage of default constructor is that you can create an object with its members uninitialized.

##Question 10:
this is a pointer that points to the invoking object.
*this refers to the object a whole.
