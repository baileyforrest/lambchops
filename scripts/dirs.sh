DIRS='main'
COMMAND="find $DIRS -name '*.h' -o -name '*.cc'"
FILES=$(eval $COMMAND)
