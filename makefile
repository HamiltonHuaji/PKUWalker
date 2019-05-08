APKTOOL = apktool

product/pkurunner-v1.2.4_res.apk :
	$(APKTOOL) d product/pkurunner-v1.2.4_origin.apk -o product/pkurunner-v1.2.4_res
	cp -r extract/* product/pkurunner-v1.2.4_res/
	./build.py
	$(APKTOOL) b product/pkurunner-v1.2.4_res -o product/pkurunner-v1.2.4_res.apk

.PHONY : clean
clean :
	rm -fr product/*
.PHONY : mod
mod :
	cp -r extract/* product/pkurunner-v1.2.4_res/
	./build.py
.PHONY : apk
apk :
	$(APKTOOL) empty-framework-dir
	$(APKTOOL) b product/pkurunner-v1.2.4_res -o product/pkurunner-v1.2.4_res.apk
.PHONY : smali
smali :
	$(APKTOOL) d product/pkurunner-v1.2.4_origin.apk -o product/pkurunner-v1.2.4_res
.PHONY : restore
restore :
	cp -r origin/* product/pkurunner-v1.2.4_res/
.PHONY : sign
sign :
	jarsigner -keystore tmp.keystore -signedjar product/pkurunner-v1.2.4_res.apk product/pkurunner-v1.2.4_res.apk tmp.keystore
.PHONY : gen_sign
gen_sign :
	keytool -genkey -alias tmp.keystore -keyalg RSA -validity 20000 -keystore tmp.keystore