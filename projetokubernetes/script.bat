echo "Criando imagens"

docker build -t erickws/projeto-backend:1.0 backend/.
docker build -t erickws/projeto-database:1.0 database/.

echo "Push das imagens"

docker push erickws/projeto-backend:1.0
docker push erickws/projeto-database:1.0

echo "Criando Serviços"

kubectl apply -f ./services.yml

echo "Criando os deployments"

kubectl apply -f ./deployments.yml

