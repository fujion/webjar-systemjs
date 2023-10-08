function dir_exists {
  if [[ ! -d $webjar_root/$1 ]]; then
    echo "Directory does not exist: $1"
    exit 1
  else
    echo "Directory exists: $1"
  fi
}

function file_exists {
  if [[ ! -f $webjar_root/$1 ]]; then
    echo "File does not exist: $1"
    exit 2
  else
    echo "File exists: $1"
  fi
}

if [[ "" == "$1" ]]; then
  echo "You must specify the webjar root directory."
  exit 3
fi

webjar_root=$1

file_exists "dist/extras/amd.js"
file_exists "dist/extras/dynamic-import-maps.js"
file_exists "dist/extras/global.js"
file_exists "dist/extras/module-types.js"
file_exists "dist/extras/named-exports.js"
file_exists "dist/extras/named-register.js"
file_exists "dist/extras/transform.js"
file_exists "dist/extras/use-default.js"

file_exists "dist/s.js"
file_exists "dist/system.js"
file_exists "LICENSE"
file_exists "README.md"

echo "=========================="
echo "Validation was successful."
