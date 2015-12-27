rm -rf fauxmo.py
rm -rf LICENSE
rm -rf protocol_notes.txt
rm -rf README.md
sudo docker build -t fauxmo:v1 .
echo "sudo docker run -d --net host fauxmo:v1" > start.sh 
