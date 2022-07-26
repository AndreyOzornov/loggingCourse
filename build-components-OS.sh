mvn -f books/pom.xml clean
mvn -f books/pom.xml package

mvn -f authors/pom.xml clean
mvn -f authors/pom.xml package

mvn -f web-sockets/pom.xml clean
mvn -f web-sockets/pom.xml package

mvn -f frontend/pom.xml clean
mvn -f frontend/pom.xml package

docker build -t andreyoz1986/bff-books-service:1.0 -f books/Dockerfile books
docker build -t andreyoz1986/bff-authors-service:1.0 -f authors/Dockerfile authors
docker build -t andreyoz1986/bff-web-sockets-service:1.0 -f web-sockets/Dockerfile web-sockets
docker build -t andreyoz1986/bff-frontend:1.0 -f frontend/Dockerfile frontend
