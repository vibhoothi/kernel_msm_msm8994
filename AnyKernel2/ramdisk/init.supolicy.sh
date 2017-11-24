#!/system/bin/sh

SULIBS="/su/lib:/system/lib64:/system/lib"

for SUPOLICY in `which supolicy sepolicy-inject`;
do
	LD_LIBRARY_PATH=$SULIBS $SUPOLICY --live \
	"allow untrusted_app sysfs file { read write getattr open }" \
	"allow untrusted_app sysfs:file { read write getattr open }"
done
