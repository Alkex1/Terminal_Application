# ﻿﻿Software Development Plan

### Statement of Purpose and scope for Terminal Application

#### What will the application do?
The Note taking app will allow users to easily make files/directories, take notes easily that will automatically be saved to a quicknote.txt file, and read the contents of that file.
#####Why am I developing it?
I am developing this app because I personally wanted to be able to quickly and easily make notes from the command line, as I'm usually pretty bad at organising and keeping my notes all in one place. So I thought it would be interesting to make an application that did that for me.
#####Why/How it would be used?
As to the why it would be used, I would imagine it would make it easy for developers that work in the command line a lot to take quick simple notes that they could find easily later. It can be used fairly easily from the CLI.

###Features

1. Make and remove Directories(folders)/files.
2. Make simple qicknotes.
3. Print quicknotes to the terminal for ease of access.
4. Move files into folder of your choosing.

###User Experience
#####How will the user find out how to interact with/use each feature
The application has easy to read prompts that ask the user to input a command, along with options that they can choose from.
#####How the user will interact with/use each feature
The user can simply type in the command for what they want the application to do, e.g. If the user inputs 'quicknote' into the terminal after running the program a prompt of 'quicknote: ' will appear under which another line appears saying "type 'back' at any point to end task".

#####How errors will be handled by the application and be displayed to the user?
If they type in a command that is not realised by the program, a prompt saying "I'm sorry I didn't quite catch that" will appear in the terminal. If a significant error occurrs, such as trying to remove a directory that has files inside of it, an error message of "Whoops, that shouldn't have happened" will appear.

###Control Flow Diagram
![#Alex's Terminal app Flowchart.png](./flowchart_pictures/Alex's Terminal app Flowchart.png)

###Implementation Plan
####How the features will be implemented?

###Deadline/duration for each feature
3/09/2019 - brainstorm of features for note taking app/research
3/09/2019 - Creation of prototype of note taking app
3/09/2019 - Add features 'Make file', "Make directory', 'make a quicknote', 'read quicknote'
4/09/2019 - Looking for/debugging issues in code/adding new features
4/09/2019 - Creating basic structure of documentation
4/09/2019 - Make Flowchart of terminal app
5/09/2019 - Work on documentation
5/09/2019 - fix up user interface/codebase
5/09/2019 - Add new features, 'Move file', 'remove directory/files'

###Status updates
1.I have managed to get everything working in my application for the basic features of make a folder, make a file, and make a quicknote. The features all work as I intended and are effective, if simple.
I did however at this point realise how many extra features I need to make it a useful app, rather than just simple a simple one, such as viewing contents of a folder/file, deleting a folder/file, as well as adding tags to the files themselves.
While this should all be reasonably straightforward to add, it does kind of make my idea of getting the program to automatically transfer files to folders based on the heading/opening line to be a bit unrealistic.

2.Tried to add a method to dry up my code that allowed users to go back to the original menu or exit the application entirely. couldn't manage to make it work inside of my original if/elsif/else statements in my code. Even trying to add a new if/else statement to call the method from inside of another method did not work. Code still works, and manage to implement a few extra features, namely move/remove files/directories.


###Help file
####Steps to install application


####Dependencies

####system/hardware requirements
minimum operating system: windows 95, mac OS X 10
Processing speed: 2.0GHz or faster
512mb of RAM
1GB of hard drive space
low end graphics card


recommended operating system: WIndows 7
5ghz processor or faster 32-bit(x86) or 64-bit(x64)
1GB RAM  for 32-bit or 2GBof RAM for 54-bit
16GB of hard drive space for 32-bit or 20GB for 64-bit
DirectX 9 graphics device with WDDM 1.0 or higher

####Feature Explanation
After running the application a prompt will appear telling the user their options of what to type into the terminal.
1. Make and remove files/directories(folders): 
    User needs to type in 'make file' or 'file' after the prompt, press enter and it will take them to another prompt that will ask them 'What would you like to call it' in the case of make file, or 'make directory' in the case of them wanting to make a new directory/folder.
    Similarly if the user wants to remove file they input 'remove file' and the name of the file (along with the type of file it is). User input of 'remove directory' will allow the user to remove a directory that does not contain files in it (which I have specifically made that way so that they don't lose content they may have forgotten about)
2. Make simple qicknotes: 
    User input of 'quicknote' or 'q' and hitting the return key will show a prompt of 'quicknotes:  'type 'back' to stop taking notes'' which will allow the next set of input they type in to create a file named quicknotes in the folder containing the program, or appending extra notes to the next line of the quicknotes.txt file if there is already a file of the same name.
    Since the program is also inside of a loop, it will continue to prompt them to input quicknotes, untill they choose to go back to the 'main options menu' by inputting 'back' or exiting the application by typing 'exit' application.
3. Print quicknotes to the terminal for ease of access:
    User input of 'read quicknote' will display the contents of the quicknote.txt file if they have created, in the terminal with a new line for each separate entry to the file.
4. Move files into folder of your choosing:
    User input of 'move file' will prompt the user with 'What file would you like to move' after which they can enter the name of the file (with file type annotation), then after hitting the return key prompts the user again with 'where to' in which they can input their chosen directory location to place the file.

###Two tests to check the application is running as expected

### Each test should
####cover a different feature of the application
####state what is being tested
####provide at least Two test cases and the expected results for each case

###GitHub repository
https://github.com/Alkex1/Terminal_Application
###Project Management(Trello)
https://trello.com/b/saJQlAKe/alexs-terminal-application









