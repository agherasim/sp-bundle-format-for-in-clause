# sp-bundle-format-for-in-clause
![Screencast](https://raw.githubusercontent.com/agherasim/sp-bundle-format-for-in-clause/master/screencast.gif)

Sequel Pro bundle to format a list of items for inclusion into an statement

**The list must contain one item per line.**

## Usage ##
- open Sequel Pro -> Bundle -> Bundle Editor
- create a new bundle under Input Field -> Format
- name it ```Format for IN```
- set keyboard shortcut (recommended is ```^⌥⌘I```)
- copy contents of bundle.pl into Sequel Pro
- save
- enjoy

## Contributing ##
### Running tests ###
- ```cd test```
- ```./test.sh```

### Adding new tests ###
- tests expect an input file and an expected results file;
- tests follow the naming convention test_XX.in for input file and test_XX.exp for expected results;
- lines starting with # are considered comments;
- first comment line in input file is used for test description; 
