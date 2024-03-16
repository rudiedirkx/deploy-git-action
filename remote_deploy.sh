cd "$1"

git status

echo "===="

git checkout .
git pull || exit 2

echo "===="

[ -f "composer.json" ] && composer install -o --no-dev || echo "No composer"
