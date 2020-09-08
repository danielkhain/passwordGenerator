# Password Generator
This short bash script generates easy to remember, but difficult to crack passwords. It randomly concatenates two words selected from `/usr/share/dict/words`, a number from 0 to 2000, and a special character. 

## Technical Requirements
This program requires the `gshuf` command. To get it, run `brew install coreutils` in Terminal.

## Creating a shortcut
Having to change directories in order to get your new password is exhausting. Therefore, the following steps will let you run the password generator from any directory.
1. Put the `passwordGenerator.sh` file somewhere where it will not be in the way.
1. Open Terminal and go to that directory, and type `chmod u+x passwordGenerator.sh`.
1. Type `cd ~` in Terminal.
1. Type `open ~/.bash_profile`.
1. At the bottom, type in the following: `# Setting custom PATH for Password Generator` and `alias generatePassword='[filepath to passwordGenerator.sh]'` (Don't include the brackets)
1. Type `source ~/.bash_profile` in the Terminal.
1. Now, typing `generatePassword` into the command line from any directory will produce a password!
