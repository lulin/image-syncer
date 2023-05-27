while read line
do
  echo ${line}
  skopeo sync --dest-creds ${USERNAME}:${PASSWORD} --src docker --dest docker registry.k8s.io/pause:3.5.7 registry.aliyuncs.com/wanglulin
  skopeo sync --dest-creds ${USERNAME}:${PASSWORD} --src docker --dest docker ${line}
done < sync.list

exit $?