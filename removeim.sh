docker image rm appv1 -f
docker image rm dbv1 -f
docker image build -t appv1 -f appdockerfile .
docker image build -t dbv1 -f dbdockerfile .
