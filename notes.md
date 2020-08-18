# IT Automation

- 18:48 - If (time_to_automate * task_frequency) (time_to_perform * task_frequency), then automate the task!
- Keep in mind that once a task is wrapped in automation anyone can do it.
- Pareto principle - 20% of the system administration tasks you perform are responsible for 80% of your work.
- Bit Rot - The actual bits in the script don't decay, but its assumptions about the implicit signals it relies on do.
- Create a notification method that could be anything from an email to an update on a a dashboard.  It surfaces the error so a person can actually fix the automation.

### Ruby

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

### OOH Ruby
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

### Writing a Script from the Ground Up
- Install net-ping using:
$ sudo gem install net-ping

### Regexp and Text Processing

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

- Strings Summary
- Handy Tools - Indexing, Strip and GSub

#### Regular Expressions
- Regexp
- Regular expressions allow you to answer questions like, "What are all o the four-letter words in a file?" or "Give me all of the email addresses in a request log."
- People who can use these are :
  - IT Support Specialists
  - Software Engineers
  - Site Reliability Engineers
  - System Administrators

- Regex Basics
  - The ^ and $ specifically match the start and end of a line, not a string.  If you have a string that spans multiple lines, you can use the \A and \Z anchors to match the start and end of the whole string, not just the line.
  - Repitition symbols include both the + character, which means "match one or more occurrences of the preceding character," and the * symbol, which means "match zero or more occurrences if the preceding character."
  - Advanced Matching
  - Character Classes - [] Allow you to match against the set of characters contained within them.
    - Ruby also offers some specialized metacharacters that behave like character classes.  These can be used as shortcuts to match specific types of text.
  - Regexp and Str Methods
    - You can also iterate through a string using regular expressions and the scan method, which accepts a regexp as an argument.
    - Split - You can use split to chop up a string into an array, using either a character or regular expression to tell Ruby where to do the splitting.

- Processing Log Files
  - Cron job - used to schedule scripts on Unix-based operating systems
    - Output from syslog.rb
  
    $ irb syslog.rb 
      syslog.rb(main):001:0> File.open("/var/log/syslog").each do |line|
      syslog.rb(main):002:1*         if line.include?("CRON")
      syslog.rb(main):003:2>             m = /\((.+)\)$/.match(line)
      syslog.rb(main):004:2>             puts m.captures
      syslog.rb(main):005:2>         end
      syslog.rb(main):006:1>   end
      root) CMD (   cd / && run-parts --report /etc/cron.hourly
      root) CMD ([ -x /etc/init.d/anacron ] && if [ ! -d /run/systemd/system ]; then /usr/sbin/invoke-rc.d anacron start >/dev/null; fi
      root) CMD (   cd / && run-parts --report /etc/cron.hourly
      root) CMD ([ -x /etc/init.d/anacron ] && if [ ! -d /run/systemd/system ]; then /usr/sbin/invoke-rc.d anacron start >/dev/null; fi
      root) CMD ([ -x /etc/init.d/anacron ] && if [ ! -d /run/systemd/system ]; then /usr/sbin/invoke-rc.d anacron start >/dev/null; fi
      root) CMD ([ -x /etc/init.d/anacron ] && if [ ! -d /run/systemd/system ]; then /usr/sbin/invoke-rc.d anacron start >/dev/null; fi
      root) CMD ([ -x /etc/init.d/anacron ] && if [ ! -d /run/systemd/system ]; then /usr/sbin/invoke-rc.d anacron start >/dev/null; fi
      => #<File:/var/log/syslog>

  - Hash - Remember that hashes are data structures used to store information in key=>value pairs format.  Each entry has a key with an associated value.

- Command Line Text Processing
  - Examples:
    $ grep -i CRON /var/log/syslog
    $ grep -i CRON /var/log/syslog | wc -l
    $  grep -i CRON /var/log/syslog | grep -oE '\((.+)\)$'
  - Along with saving scripts to a file, Ruby also offers system administrators the ability to process text from the command line itself, without having to go through the trouble of writing and saving a new script file.
  - '-e' This flag lets you execute code you pass directly into Ruby on the command line, without the need to save it to disk first. i.e.
    $ ruby -e 'puts "This is pretty cool!"'
    This is pretty cool!
    $ ruby -e 'puts 1+1'
    2
  -  '-n' This flag tells Ruby that we want to apply our code to each line of STDIN until there's no more.
  - Example's:
  
    $ cat /var/log/syslog | ruby -ne 'if $_.include?("CRON") then m = /\((.+)\)$/.match($_); puts m.captures end'
      root) CMD (   cd / && run-parts --report /etc/cron.hourly
      root) CMD ([ -x /etc/init.d/anacron ] && if [ ! -d /run/systemd/system ]; then /usr/sbin/invoke-rc.d anacron start >/dev/null; fi
      root) CMD (   cd / && run-parts --report /etc/cron.hourly
      root) CMD ([ -x /etc/init.d/anacron ] && if [ ! -d /run/systemd/system ]; then /usr/sbin/invoke-rc.d anacron start >/dev/null; fi
      root) CMD ([ -x /etc/init.d/anacron ] && if [ ! -d /run/systemd/system ]; then /usr/sbin/invoke-rc.d anacron start >/dev/null; fi
      root) CMD ([ -x /etc/init.d/anacron ] && if [ ! -d /run/systemd/system ]; then /usr/sbin/invoke-rc.d anacron start >/dev/null; fi
      root) CMD ([ -x /etc/init.d/anacron ] && if [ ! -d /run/systemd/system ]; then /usr/sbin/invoke-rc.d anacron start >/dev/null; fi
      root) CMD (   cd / && run-parts --report /etc/cron.hourly
      root) CMD ([ -x /etc/init.d/anacron ] && if [ ! -d /run/systemd/system ]; then /usr/sbin/invoke-rc.d anacron start >/dev/null; fi
      root) CMD ([ -x /etc/init.d/anacron ] && if [ ! -d /run/systemd/system ]; then /usr/sbin/invoke-rc.d anacron start >/dev/null; fi
      root) CMD ([ -x /etc/init.d/anacron ] && if [ ! -d /run/systemd/system ]; then /usr/sbin/invoke-rc.d anacron start >/dev/null; fi
      root) CMD (   cd / && run-parts --report /etc/cron.hourly

    $ for i in $(cat ./story.txt); do B='echo -n "${i:0:1}" | tr "[:lower:]" "[:upper:]"'; echo -n "${B}${i:1} "; done; echo -e "\n"
    echo -n "${i:0:1}" | tr "[:lower:]" "[:upper:]"nce echo -n "${i:0:1}" | tr "[:lower:]" "[:upper:]"pon echo -n "${i:0:1}" | tr "[:lower:]" "[:upper:]" echo -n "${i:0:1}" | tr "[:lower:]" "[:upper:]"ime, echo -n "${i:0:1}" | tr "[:lower:]" "[:upper:]"he echo -n "${i:0:1}" | tr "[:lower:]" "[:upper:]"as echo -n "${i:0:1}" | tr "[:lower:]" "[:upper:]" echo -n "${i:0:1}" | tr "[:lower:]" "[:upper:]"em echo -n "${i:0:1}" | tr "[:lower:]" "[:upper:]"f echo -n "${i:0:1}" | tr "[:lower:]" "[:upper:]" echo -n "${i:0:1}" | tr "[:lower:]" "[:upper:]"rogramming echo -n "${i:0:1}" | tr "[:lower:]" "[:upper:]"anguage echo -n "${i:0:1}" | tr "[:lower:]" "[:upper:]"alled echo -n "${i:0:1}" | tr "[:lower:]" "[:upper:]"uby. 

    $ cat story.txt | ruby -ne 'puts $_.gsub(/\S+/,&:capitalize)'
    Once Upon A Time, The Was A Gem Of A Programming Language Called Ruby.

- Other Data Formats
  - HTML - A markup format which defines the content of a webpage.
  - JSON - A data-interchange format commonly used to pass data between computers on networks (especially the internet).

- Reading CSV Files
  - CSV "Comma-Separated Values" - CSV files are stored in plain text, and each line in a csv file generally represents a single data record.  Each field in that file is separated by a ','.
  - The return value of the CSV read Method is an "array of arrays", which means that several inner arrays are nested inside an outer one.
- Searching CSV Files
  - Using the Array Class  and Find Methods
- Modifying CSV Files
  - The important difference between File.open and CSV.open is that with File.open, you append strings to a file.  With CSV.open, you append rows, which are represented as arrays.
- CSV Summary
  - It can be helpful to think of a CSV file in terms of a spreadsheet, where each line corresponds to a row, and each comma-separated field corresponds to a column.
  - Several Gems can be installed to Parse CSV files, like fastercsv

- HTML Processing
  - HyperText Markup Language
  - HTML data format - Describes and defines the content of a webpage
- HTML Parsing Libraries
  - Gems nonogiri required
  - https://nokogiri.org/tutorials/installing_nokogiri.html
    sudo apt-get install build-essential patch ruby-dev zlib1g-dev liblzma-dev
    sudo gem install nokogiri

#### Version Control and Testing
- Skipped through most of the Git Stuff
- Testing starts @ 5:12:05
  - Software Testing - The process of evaluating computer code to determine whether or not it does what you expect.
  - Formal software testing takes this a step further, codifying tests into its own software and code that can be run to verify that your program does what you expect.
- Test-Driven Development
  - Writing the tests before writing the code :-o
    - When faced with a new problem that can be solved by automation, your gut instinct might be to fire up your text editor and start writing.
    - But, creating some tests first makes sure that you've thought through th problem you're trying to solve, and some of the different approaches you might use to accomplish it.
    - The test-driven development cycle usually first involves writing a test, then running it to make sure it fails.
    - Once you've verified that it fails, you write the code that will satisfy the test, and run the test again.
    - If it passes, you can continue on to the next part of your program.
    - If it fails, you can debug it and run the tests again.
- Black Box vs White Box
  - White, sometimes called Clear or Transparent Box Testing, relies on the test creator's knowledge of the         software being tested to construct the test cases. 
    White box tests are helpful because the test-writer can use their knowledge of the source code itself to create the test that cover most of the ways the program behaves.

  - Black or Opaque Box Testing, the test doesn't know the internals of how the software works.
    Black box tests are useful because they don't rely on knowledge of how the system works, which means their test cases are less likely to be biased by the code.

  - If the Unit Tests are created before any code is written based on the specifications of what the code is supposed to do, they can be considered black box unit tests.

- Test Types
  - Unit tests
  - Integration tests
  - Regression tests
  - Smoke tests
  - All the above come under the category of a Test Suite

- Unit test
  - Given a known input, does the output of the code match our expectations?
  - test_unit1.rb - Because the scope of the test is restricted to a small, specific unit, these types of test usually run really quickly, and debugging them is simple since there's a limited number of reasons for them to fail.
  - Besides testing that the code works in the general case, you should also see what happens when you provide it with some input you might not expect it to encounter under normal operations.
  - Edge case - Input to our code that produce unexpected results, and are found at the extreme ends of the ranges of input we imagine our programss will typically work with.
  - Edge case now catchered by an if statement which returns an error message

- Writing Unit Tests in Ruby
  - Install Test-unit gem
  sudo gem install test-unit

  - When using the test-unit library, you've got to organize your tests into classes that inherit from the TestCase class.
  - Any methods we define in our TestDivider class will automatically become tests that can be run by the testing framework.
  - The assert_equal method basically says, "Both of my arguments are equal!"
  Output:

  $ ruby test_divider.rb 
  Loaded suite test_divider
  Started
  .
  Finished in 0.000832713 seconds.
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------
  1 tests, 1 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
  100% passed
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------
  1200.89 tests/s, 1200.89 assertions/s

  - This means that the normal execution of the program is stopped, and the program will likely crash.  These errors are referred to as runtime exceptions, because they happen when the script is run.
  
  Update Output with the test_divide_by_0 function:

  $ ruby test_divider.rb 
  Loaded suite test_divider
  Started
  ..
  Finished in 0.000944777 seconds.
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------
  2 tests, 2 assertions, 0 failures, 0 errors, 0 pendings, 0 omissions, 0 notifications
  100% passed
  -------------------------------------------------------------------------------------------------------------------------------------------------------------------
  2116.90 tests/s, 2116.90 assertions/s

- Test Summary
  - Remember that good tests help make any automation and scripts you write more robust, resilient, and less buggy.
  - When engineers submit their code, it's integrated into the main repository and test are automatically run against it to spot bugs and errors in a process called 'continuous integration'.

#### Configuration & Automation at Scale
- Introduction to Automation at Scale
  - A scalable system is a flexible one.
  - Motivation for Automation at Scale
    - IaC - Infrastructure as Code
  - Configuration Management
    - CM Tool - Chef
  - Introduction to Chef
    - A configuration management system used to configure and manage IT infrastructure, including the bare-metal, virtual, and cloud-based varieties.
      - recipes and cookbooks
      - Node - Some machine managed by a Chef Server, which could be anything from a web server to a network server.
      - Chef uses the Intent-based automation paradigm.
      - Idempotency and Convergence
      - Chef is built on top of Ruby, although some of the part are built with Erlang.
      - Domain-specific language (DSL) A specialized computer language that's used for a specific purpose, like declaring resources within a Chef recipe.
      - Chef Configurations
        - Resources - Statements of configuration that describe the desired state of an item of configuration, like a file, software package, or even a script.
        - Resources type include, Type, Name, Properties & Actions.
        - Cookbooks - generally represent a set of configuration for a single infrastructure unit or scenario, like it's stated in the official Chef documentation.
        - Chef Supermarket
        - Test Kitchen - Test your recipes and cookbooks

- Will have to come back to this has currently setup is a VM in VirtualBox and it requires Virtualbox - Chef & Vagrant within the running Main Host...

#### Monitoring
- 