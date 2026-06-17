adr_bin=$(dirname "$(command -v adr)")
tmpbin=$(pwd)/bin-without-more
mkdir "$tmpbin"
for cmd in bash sh awk sed grep find sort head cut tr date mkdir mv cat basename dirname pwd getopt
do
    ln -s "$(command -v "$cmd")" "$tmpbin/$cmd"
done

PATH="$tmpbin:$adr_bin" ADR_PAGER= PAGER= adr help
