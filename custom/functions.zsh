kvw () {
  vw=$1
  shift
  ssh vaeworker-k-$vw.vae.av sudo kill $@
}

ca-clear-reminders () {
  ssh consul-b-1.av 'consul kv delete --recurse consul-alerts/reminders/'
}

av-check-inventory () {
  ansible --list-hosts all | tail -n +2 | sed 's/    //g' | sort | diff saws.ec2.inventory -
}

awsv () {
  exec aws-vault exec "${AWS_DEFAULT_PROFILE:-work}" -- /usr/local/bin/aws "$@"
}

psaas-ami () {
  aws ec2 describe-images --owners self --filters "Name=name,Values=*-release-$1" --region us-east-1 --output=text  | grep ami | awk '{print $6 " " $9}'
}

psaas-promote-mirror () {
  if [ -z $2 ]; then
    echo "usage: psaas-promote-mirror BuildNumber Version"
  else
    ssh ubuntu@apt-mirror.int.auth0.com /home/ubuntu/scripts/promotereleasecandidate $1 $2 $(date +%Y-%m-%d) $(tarball dev $1 | awk '{print $5}' | xargs)
  fi
}

