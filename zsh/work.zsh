# useful aliases and configuration for specific projects

alias ku='kubectl config use-context minikube'
alias kudev='kubectl config use-context aws_assure-dev'

function deploy {
  cd ~/work/infrastructure/kubernetes-templates/assure/0
  ./deploy.sh "$@"
}
