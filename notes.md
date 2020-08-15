# IT Automation

- 18:48 - If (time_to_automate * task_frequency) (time_to_perform * task_frequency), then automate the task!
- Keep in mind that once a task is wrapped in automation anyone can do it.
- Pareto principle - 20% of the system administration tasks you perform are responsible for 80% of your work.
- Bit Rot - The actual bits in the script don't decay, but its assumptions about the implicit signals it relies on do.
- Create a notification method that could be anything from an email to an update on a a dashboard.  It surfaces the error so a person can actually fix the automation.

#### Ruby

$ irb
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

#### Using gem to install net-ping
$ sudo gem install net-ping
[sudo] password for robq: 
Fetching net-ping-2.0.8.gem
Successfully installed net-ping-2.0.8
Parsing documentation for net-ping-2.0.8
Installing ri documentation for net-ping-2.0.8
Done installing documentation for net-ping after 0 seconds
1 gem installed

- Output from irb net2.rb
$ irb net2.rb 
net2.rb(main):001:0> require "net/ping"
=> true
net2.rb(main):002:0> 
net2.rb(main):003:0> # Ping the loopback address and print the result
=> nil
net2.rb(main):004:0> p = Net::Ping::External.new("127.0.0.1")
net2.rb(main):005:0> puts p.ping?
true
=> nil

#### Finding Ruby Gem Packages
$ gem list
$ gem list --remote

$ gem query --remote --name-matches net-ping
*** REMOTE GEMS ***
net-ping (2.0.8, 1.7.6 universal-mingw32, 1.6.1 x86-mingw32, 1.3.2 x86-mswin32-60)

- or you can use
$ gem list --remote | grep net-ping
net-ping (2.0.8, 1.7.6 universal-mingw32, 1.6.1 x86-mingw32, 1.3.2 x86-mswin32-60)

#### File.new
- file.close - Always use this close
- Race conditions - This will occur when multiple processes try to modify and read one resource at the same time.
- You back bypass this by using File.open as Ruby will auto close the file.
- Mode - A Mode is, kind of like a file permission, which governs what you can do with the file you've just opened
- Entries - This method will return an array, each element of which will be a file or subdirectory within the current directory
- Exists? - Can be used for all kinds of things, like verifying a log file is present before trying to write to it, or checking that a given file hasn't been created yet so you don't overwrite it.

#### I/O Streams
- The basic mechanism for performing input and output operations in Ruby Scripts
- STDIN - Standard In (Stream)
- STDOUT - Standard Out
- STDERR - Standard Error
- Examples:
$ ruby stdout_example.rb > newfile.txt # write to nf.txt
$ ruby stdout_example.rb >> newfile.txt # append to nf.txt
$ ruby text_processor.rb < sometext.txt # using STDIN which the .rb can perform actions on
$ ruby buggy_program.rb 2> error_file.txt # Catch STDERR messages
$ ruby buggy_program.rb &> all_output.txt # Catch all Output
$ ruby buggy_program.rb >> all_output.txt 2>&1 # Redirecting I/O Streams to other Streams
  The '&' is used to state redirecting to another stream not a file

Further Example's:
$ grep "####" notes.md |sort|uniq -c|sort -n
      1 #### chomp explained
      1 #### File.new
      1 #### Finding Ruby Gem Packages
      1 #### I/O Streams
      1 #### Library
      1 #### Methods
      1 #### Modules (are Not Classes)
      1 #### OOH Ruby
      1 #### require, load & include Methods
      1 #### Ruby
      1 #### Using gem to install net-ping

$ cat haiku.txt 
ruby is super
automating everything
maiking life easy

$ cat haiku.txt | ruby capitalizer.rb 
Ruby is super
Automating everything
Maiking life easy

Or you could use:

$ ruby capitalizer.rb < haiku.txt 
Ruby is super
Automating everything
Maiking life easy

#### Scripting Subprocesses
- Examples

$ ruby yikes.rb 
Traceback (most recent call last):
	1: from yikes.rb:2:in `<main>'
yikes.rb:2:in ``': No such file or directory - lazy (Errno::ENOENT)
$ ruby yikes2.rb 

continuing on our merry way...
$ irb yikes.rb 
yikes.rb(main):001:0> # using back ticks ``
=> nil
yikes.rb(main):002:0> output = `lazy`
Traceback (most recent call last):
        5: from /usr/bin/irb:23:in `<main>'
        4: from /usr/bin/irb:23:in `load'
        3: from /usr/lib/ruby/gems/2.7.0/gems/irb-1.2.1/exe/irb:11:in `<top (required)>'
        2: from yikes.rb:2
        1: from yikes.rb:2:in ``'
Errno::ENOENT (No such file or directory - lazy)
yikes.rb(main):003:0> 
yikes.rb(main):004:0> puts output

=> nil
yikes.rb(main):005:0> puts "continuing on our merry way..."
continuing on our merry way...
=> nil
$ irb yikes2.rb 
yikes2.rb(main):001:0> # using the system method
=> nil
yikes2.rb(main):002:0> output = system("lazy")
yikes2.rb(main):003:0> 
yikes2.rb(main):004:0> puts output

=> nil
yikes2.rb(main):005:0> puts "continuing on our merry way..."continuing on our merry way...
=> nil

$ irb yikes3.rb 
yikes3.rb(main):001:0> # using Redirect STDERR to STDOUT
=> nil
yikes3.rb(main):002:0> output = `lazy 2>&1`
yikes3.rb(main):003:0> 
yikes3.rb(main):004:0> puts output
sh: 1: lazy: not found
=> nil
yikes3.rb(main):005:0> puts "continuing on our merry way..."continuing on our merry way...
=> nil
$ ruby yikes3.rb 
sh: 1: lazy: not found
continuing on our merry way...

#### Open3 Module
- Using Open3.capture3("", "")
badscript.rb Example:

$ ruby badscript.rb 

ls: invalid option -- 'z'
Try 'ls --help' for more information.
false

- Any change to the system or the external commands your scripts utilize is an opportunity for breakage, which can sometimes be subtle and hard to detect.
- For more complex or long running tasks your probably beter using Libraries, Modules or Gems, Ruby provides...

Subprocesses Summary
- If you want to run a system command and only need to know whether or not it succeeded, use the system Method.
- If you want to quickly run a command and capture its standard output, use backticks -- as long as you're ok with the script failing if the command doesn't succeed.
- If you need to capture both standard output, standard error, and the return status, import the open3 module and us the capture3 Method.

#### Writing a Script from the Ground Up
- Install net-ping using:
$ sudo gem install net-ping

#### String manipulation in Ruby
- Examples:
$ irb
irb(main):001:0> m = /(abc).*(123).*/i.match("abcdefg1234567")
irb(main):002:0> puts m.captures.inspect
["abc", "123"]
=> nil
irb(main):009:0> m.regexp
=> /(abc).*(123).*/i

irb(main):003:0> n = /Ruby/.match("Scripting with Ruby!")
irb(main):005:0> puts n.string
Scripting with Ruby!
=> nil

irb(main):014:0> input = gets
Hello?
irb(main):015:0> puts input.length
7
=> nil
irb(main):016:0> input.dump
=> "\"Hello?\\n\""
irb(main):017:0> chomped_input = input.chomp
irb(main):018:0> puts chomped_input
Hello?
=> nil
irb(main):019:0> puts chomped_input.length
6
=> nil
irb(main):020:0> puts chomped_input.dump
"Hello?"
=> nil
irb(main):021:0> /\// =~ "forward/slash"
=> 7

- String Indexing
- \r - Indicates a carriage return, which means that the cursor should be moved to the beginning of the line.
- \n - A newline separator indicating that the cursor should be moved to a new line.

