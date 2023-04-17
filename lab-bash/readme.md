![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | Bash

## Introduction

In this lab, we are going to practice with [`bash`](<https://en.wikipedia.org/wiki/Bash_(Unix_shell)>), a shell and command-line language!

## Setup

1. Open a Terminal in your system: 
   - Linux/MacOS users: open a terminal in your system. 
   - Windows users: open GitBash in your system

2. Download and install the Sublime text editor for your OS [here](https://www.sublimetext.com/).

3. Open the Sublime text editor side by side with the Terminal.

4. Fork this repo in your git hub account and then clone it into the folder Week_1/Day_1/ of your machine. This will create a folder called "lab-bash" inside. 

5. Use the terminal to navigate to the "lab-bash" folder.

6. Use the Sublime menu to open a new empty file in the "lab-bash" folder and name it "lab_solutions.txt".

7. Check the contents of the folder using the "ls" command in the Terminal.

```shell
ls
```

and you should see the following:

```shell
exercises  inputs  lorem  lorem-copy  modules  outputs  README.md
```

8. Stay in the same directory/folder and complete the following exercises.

9. To provide your solutions, test your solution in the terminal and once you figured out the solution to each exercise do the following:

  - Copy the statement of each exercise on the "lab_solutions.txt" file opened in the Sublime text editor
  - Add the Terminal command needed to solve each exercise on the "lab_solutions.txt" just below the exercise statement as shown below:
  
  ```
  terminal_command # replace "terminal_command" with the command that you used in the terminal to solve the exercise
  ```
  
  - Save the "lab_solutions.txt" file.
  
10. Once you finished all the exercises type the following in the Terminal:

    - *git status* 
    - *git add lab_solutions.txt*
    - *git commit -m "Lab solutions"*
    - *git push origin master*
    
11. Copy the url of your forked GitHub repo on the student portal.

## Exercises

1. Using the `echo` command print in console "Hello World". Here is some info about the `echo` command [https://discuss.codecademy.com/t/what-are-practical-uses-of-the-echo-command/394788]
2. Create a new directory called `new_dir`.
3. Delete/Remove the directory `new_dir`.
4. Copy the file `sed.txt` from the `lorem` folder and paste it to the folder `lorem-copy` folder.
5. Copy the other two files from the `lorem folder` to `lorem-copy` folder in just one line using the semicolon `;`.
6. Show the `sed.txt` file content from the `lorem` folder using the [cat](https://www.geeksforgeeks.org/cat-command-in-linux-with-examples/)
7. Show the `at.txt` file and `lorem.txt` file contents from `lorem` folder.
8. Print the first 3 rows in `sed.txt` file from lorem-copy folder using [head](https://www.geeksforgeeks.org/head-command-linux-examples/)
9. Print the last 3 rows in `sed.txt` file from lorem-copy folder using [tail](https://www.geeksforgeeks.org/tail-command-linux-examples/#:~:text=The%20tail%20command%2C%20as%20the,precedes%20by%20its%20file%20name.).
10. Add `Homo homini lupus.` at the end of `sed.txt` file in the `lorem-copy` folder using [>>](https://www.shells.com/l/en-US/tutorial/Difference-between-%E2%80%9C%3E%E2%80%9D-and-%E2%80%9C%3E%3E%E2%80%9D-in-Linux).
11. Print the last 3 rows in `sed.txt` file from `lorem-copy` folder. You should see `Homo homini lupus.`.
12. `sed` command is used to replace the text in a file. Use the `sed` command to replace all occurences of `et` with `ET` in the file `at.txt` file present in the folder `lorem`. You can use the following link to refer to `sed` commands [https://www.linode.com/docs/guides/manipulate-text-from-the-command-line-with-sed/]
Check the contents of the sed.txt file using `cat` command.
13. Find who is the system user ( google is your friend ;) ). 
14. Find the current path of the directory you are in.
15. List all files with the extension `.txt` in lorem folder.
16. Count the rows in `sed.txt` file from lorem folder. Look concatenate `cat` and `wc` with the pipe `|`.
17. Count the **files** that start with `lorem` in all directories.
