#!/usr/local/bin/zsh
# gọi với ./shift-params.sh a b c d k h d i e
while test $# -gt 0
do
    echo "$@ - \$1 là $1 cắt nó ra ... "
    shift
done
echo "số các đối số \$#: $#"
