for line in $(cat sync.list)
do
  echo ${line}
  echo $line
  skopeo sync --dest-creds ${USERNAME}:${PASSWORD} --src docker --dest docker $line registry.cn-hangzhou.aliyuncs.com/wanglulin
done

exit $?