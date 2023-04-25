# KuberHW

main-install.sh and main-delete.sh just applies and deletes yamls

start.sh and stop.sh install and delete istio above

and script.sh run start.sh then stop.sh

After `minikube tunnel` you can find external ip by typing command `kubectl get all --all-namespaces`. By calling this ip, you will get the desired behavior.
