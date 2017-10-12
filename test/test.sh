#!/bin/bash -i

# Run tests defined in current directory
# Tests expect an input file and an expected results file
# Tests follow the naming convention test_XX.in for input file and test_XX.exp for expected results
# Lines starting with # are considered comments; first comment line in input file is used for test description; 

find . -name 'test*.in' | while read file; do
  test_description=`cat $file | sed 's/# //;1q'`
  base_file_name=${file//.in/}
  expected_file=${base_file_name}.exp
  expected_result=`cat $expected_file`
  actual_result=`cat $file | sed 's/^#.*//g' | perl ../bundle.pl`

  if ! [ "$expected_result" == "$actual_result" ]; then
     printf "Test '${test_description}' ... \033[31mFAILED\033[0m\n";
  else
     printf "Test '${test_description}' ... \033[42mPASSED\033[0m\n";
  fi
done
