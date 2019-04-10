
TBBR_CFG = TRUSTED_BOARD_BOOT=1 ARM_ROTPK_LOCATION=devel_rsa \
		   KEY_ALG=rsa TF_MBEDTLS_KEY_ALG=rsa \
	       ROT_KEY=./plat/arm/board/common/rotpk/arm_rotprivk_rsa.pem  \
	       MBEDTLS_DIR=../mbedtls GENERATE_COT=1 

arm-tf.build:
	export CROSS_COMPILE=$(CROSS_COMPILE) ; \
	cd arm-tf; \
	make $(TF_CONFIG) $(TBBR_CFG) DEBUG=1 BL33=$(BL33) dtbs all fip

arm-tf.clean:
	rm arm-tf/build -rf 


