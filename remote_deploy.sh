cd "$1"

git status

echo "===="

git pull || exit 2

echo "===="

composer install -o --no-dev
