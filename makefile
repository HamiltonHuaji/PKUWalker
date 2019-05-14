APKTOOL = apktool

build/pkurunner-v1.2.4_res.apk :
	$(APKTOOL) d build/pkurunner-v1.2.4_origin.apk -o build/pkurunner-v1.2.4_res
	cd build/pkurunner-v1.2.4_res/ && patch -p2 < ../../pkurunner.patch
	$(APKTOOL) empty-framework-dir
	$(APKTOOL) b build/pkurunner-v1.2.4_res -o build/pkurunner-v1.2.4_res.apk

.PHONY : clean
clean :
	rm -fr build/pkurunner-v1.2.4_res
	rm build/pkurunner-v1.2.4_res.apk
.PHONY : mod
mod :
	cd build/pkurunner-v1.2.4_res/ && patch -p2 < ../../pkurunner.patch
.PHONY : apk
apk :
	$(APKTOOL) empty-framework-dir
	$(APKTOOL) b build/pkurunner-v1.2.4_res -o build/pkurunner-v1.2.4_res.apk
.PHONY : smali
smali :
	$(APKTOOL) d build/pkurunner-v1.2.4_origin.apk -o build/pkurunner-v1.2.4_res
.PHONY : sign
sign :
	jarsigner -keystore tmp.keystore -signedjar build/pkurunner-v1.2.4_res.apk build/pkurunner-v1.2.4_res.apk tmp.keystore
.PHONY : gen_sign
gen_sign :
	keytool -genkey -alias tmp.keystore -keyalg RSA -validity 20000 -keystore tmp.keystore
# .PHONY : gen_patch
# gen_patch :
# 	diff -Nuar build/pkurunner-v1.2.4_res/  build/pkurunner-v1.2.4_patch/ > pkurunner.patch