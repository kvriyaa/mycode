apiVersion: v1
kind: Pod
metadata:
 name: hostpath-mount
spec:
 containers:
 - name: ip-app-hostpath
   image: kvriyaa/ip_app:4
   imagePullPolicy: Always
   ports:
   - containerPort: 80
   volumeMounts:
   - name: my-first-hostpath
     mountPath: app/container-hostpath-volume
 volumes:
    - name: my-first-hostpath
      hostPath:
       path: /home/ubuntu/pod_data
       type: DirectoryOrCreate
    


