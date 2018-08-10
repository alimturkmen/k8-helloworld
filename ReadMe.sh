--create image and run container--
docker build -t hi .
docker run -p 8080:8005 hi

----push the image to the repo----
docker tag hi alimt/hi
docker push alimt/hi

--------- create a pod -----------
kubectl create -f hi-pod.yaml
kubectl port-forward hi 8080:8005

---- create another one -------
kubectl create -f hi-pod.yaml
kubectl get pods
kubectl port-forward hi2 8080:8005

-------create deployment----------
kubectl create -f hi-deployment.yaml
kubectl get deployments
kubectl port-forward hi******* 8080:8005

--------create a service----------
kubectl create -f service-hi.yaml
kubectl get svc

--change the image file in deployment--
kubectl apply -f hi-deployment.yaml --record
kubectl rollout status deployment hi
refresh the page.

-----see the deployment history----
kubectl rollout history deployment hi

----- go back to previous version ----
 kubectl rollout undo deployment hi --to-revision=1

-----check the status of the pods ---
kubectl get pods

---- again go to version 2 -------
kubectl rollout undo deployment hi --to-revision=2

---- initializing helm ------
helm init # Creates Tiller pod and attaches Helm to it
helm create k8-intro-to-helm #Creates directory scheme k8s-intro-to-helm/
														  # templates/
													#	   charts/
														  # Chart.yaml
														   #values.yaml
 #  The templates/ directory is where all our k8s resources will go, 
 # and anything in this directory will be ran through the gotmpl engine
