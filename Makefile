deploy: .ratina-lab.keter
	ssh root@ratina.org "rm -rf /var/www/ratina-lab/*"
	scp ratina-lab.keter root@ratina.org:/var/www/ratina-lab/
	ssh root@ratina.org "tar zxvf ratina-lab.keter"

./ratina-lab.keter:
	stack exec -- yesod keter
