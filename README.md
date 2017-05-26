# Learning GO the TDD way 

By the time I am writing this I have no idea of how to work with go programming language but I ve been to too many interviews 
where golang is the common approach for moving php developers into new languages so I think two things:

1. Golang it´s becomming the default language for taking php developers to new languages concurrency oriented.
2. Once you realized that it is good to be poliglot at programming even though it is a painful way whay not take all the pain together 
and try to learn that new language following the three basic rules of TDD.


So this is my own path for learning the basics of GO while doing TDD so I can transition to a new language already thinking TDD 
way and not the structured way, if it happens to help anybody else it will be more than enough reward for me taking this. 

# I buy it, but, how do we do it ? 

I have read somewhere that GO has it´s own testing library inside the language itself so first of all we need to get GO installed in our 
machine, for this I will make the way easy for you as I am providing a vagrantfile that can up a debian machine with GO already installed.

You just need to have vagrant installed and run:

    vagrant up

Now you can "go" grab a cup of coffee while everything gets in place, it will take about 10 minutes to have a machine running.

Once the new machine is installed you will be able to ssh to the machine with the command: 

    vagrant ssh 


you will be able to see that /code holds the very same files of this project since I have already mounted a NFS for you, so now, "go" jump to the 
first lesson and let´s start learning, remember, I am learning too. 

