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

