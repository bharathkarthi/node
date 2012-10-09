# setups the path to symlinks to actual exectuables
export PATH=$HOME/lophilo/codesourcery/arm926ej-s:$PATH

# configure for cross-compilation, using headers from target
# no snapshots because:
# /opt/codesourcery/arm-2011.09/bin/../lib/gcc/arm-none-linux-gnueabi/4.6.1/../../../../arm-none-linux-gnueabi/bin/ld: error: /home/rngadam/lophilo/node/out/Release/obj.target/v8_base/deps/v8/src/cached-powers.o uses VFP register arguments, /home/rngadam/lophilo/node/out/Release/mksnapshot does not

# 
./configure \
	--prefix=./lophilo \
	--dest-cpu=arm \
	--dest-os=linux \
	--with-arm-float-abi=softfp \
	--without-snapshot

# need dev libs installed
#	--shared-openssl \
#	--shared-openssl-includes=$HOME/lophilo.nfs/usr/include \
#	--shared-openssl-libpath=$HOME/lophilo.nfs/usr/lib \

# need dev libs instlaled
#	--shared-zlib \
#	--shared-zlib-includes=$HOME/lophilo.nfs/usr/include \
#	--shared-zlib-libpath=$HOME/lophilo.nfs/usr/lib


# debian currently at version libv8-3.8.9 which is apparently too old
# error: 'class v8::String' has no member named 'MayContainNonAscii
# 	--shared-v8 \
#	--shared-v8-includes=$HOME/lophilo.nfs/usr/include \
#	--shared-v8-libpath=$HOME/lophilo.nfs/usr/lib \


