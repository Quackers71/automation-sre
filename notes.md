# IT Automation

- 18:48 - If (time_to_automate * task_frequency) (time_to_perform * task_frequency), then automate the task!
- Keep in mind that once a task is wrapped in automation anyone can do it.
- Pareto principle - 20% of the system administration tasks you perform are responsible for 80% of your work.
- Bit Rot - The actual bits in the script don't decay, but its assumptions about the implicit signals it relies on do.
- Create a notification method that could be anything from an email to an update on a a dashboard.  It surfaces the error so a person can actually fix the automation.

#### Ruby

robq@robq-VirtualBox:~/repos/automation-sre$ irb
irb(main):001:0> puts "Hello, World!"
Hello, World!
=> nil
irb(main):002:0> print "Hello, World!"
Hello, World!=> nil
irb(main):003:0> 5.times { print"Hello, World!" }
Hello, World!Hello, World!Hello, World!Hello, World!Hello, World!=> 5
irb(main):004:0> 5.times { puts"Hello, World!" }
Hello, World!
Hello, World!
Hello, World!
Hello, World!
Hello, World!
=> 5

- https://www.tutorialspoint.com/ruby/index.htm
- https://www.tutorialspoint.com/ruby/ruby_installation_unix.htm
- sudo apt install -y ruby


#### chomp explained

chomp is the method to remove trailing new line character i.e. '\n' from the the string. whenever "gets" is use to take i/p from user it appends new line character i.e.'\n' in the end of the string.So to remove '\n' from the string 'chomp' is used.

str = "Hello ruby\n"
str = str.chomp
puts str

o/p
"Hello ruby"

taken from https://stackoverflow.com/questions/23193813/how-to-use-gets-and-gets-chomp-in-ruby

#### OOH Ruby
- In an object oriented language like Ruby, real-world concepts are represented by classes.
- Instances of classes are called objects.
- Objects are organized by inheritance.
- Objects can have attributes which are used to store information about them.
- You can make objects do work by calling their methods using dot notation.

#### Methods
- Parenthesis should be used when there are either parameters to wrap in a Method Declaration, or when there are arguments to wrap in a Method Call.

#### require, load & include Methods
- Code imported with the load Method will be reprocessed each time load is used, while the require Method keeps track of what it has imported and makes sure it's done only once.

#### Modules (are Not Classes)
- You can't create instances of a Module
- Mixin - used for Module functionality into Classes

#### Library
- A collection of code, likely organized into multiple modules, that can be reused by any program that imports it.
