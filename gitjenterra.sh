sudo touch versions.txt
sudo chmod 777 versions.txt
sudo yum update -y
sudo echo "~~~~~~~~~~~~~Installing git~~~~~~~~~~~~~~~"
sudo yum install git -y
sudo which git >> versions.txt
sudo git --version >> versions.txt
sudo echo "~~~~~~~~~~~~~Completed git installation~~~~~~~~~~~~~~~"
sudo echo " "
sudo echo " "
sudo yum install -y yum-utils
sudo echo " "
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
sudo echo " "
sudo echo "~~~~~~~~~~~~~Installing terraform~~~~~~~~~~~~~~~"
sudo yum -y install terraform
sudo which terraform >> versions.txt
sudo terraform --version >> versions.txt
sudo echo "~~~~~~~~~~~~~Completed terraform installation~~~~~~~~~~~~~~~"
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import http://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo echo " "
sudo echo " "
sudo echo "~~~~~~~~~~~~~Installing java~~~~~~~~~~~~~~~"
sudo yum install -y java-1.8.0-openjdk
sudo which java >> versions.txt
sudo java -version >> versions.txt
sudo echo "~~~~~~~~~~~~~Completed java installation~~~~~~~~~~~~~~~"
sudo echo " "
sudo echo " "
sudo echo "~~~~~~~~~~~~~Installing jenkins~~~~~~~~~~~~~~~"
sudo yum install jenkins -y
sudo which jenkins >> versions.txt
sudo jenkins --version >> versions.txt
sudo echo "~~~~~~~~~~~~~Completed jenkins installation~~~~~~~~~~~~~~~"
sudo echo " "
sudo echo " "
sudo systemctl start jenkins
sudo systemctl enable jenkins
sudo systemctl status jenkins
sudo echo " "
sudo echo " "
paswd=$(sudo cat /var/lib/jenkins/secrets/initialAdminPassword)
sudo echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo echo "Your Temporary Jenkins password is ---> " $paswd
sudo echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"