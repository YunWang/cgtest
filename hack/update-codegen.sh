set -o errexit
set -o nounset
set -o pipefail

../vendor/k8s.io/code-generator/generate-groups.sh "deepcopy,client,informer,lister" k8s.io/cgtest/generated k8s.io/cgtest/api cgcontroller:v1alpha1 --go-header-file $(pwd)/boilerplate.go.txt --output-base $(pwd)/../../
