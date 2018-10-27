DIRS='main'

SCRIPT_DIR=$(dirname "$0")
FILES=""
for dir in $DIRS; do
  FILES="$FILES $(find $SCRIPT_DIR/../$dir -name '*.h' -o -name '*.cc')"
done
