FROM tasmail/openerp

USER root

RUN apt-get update \
	&& apt-get install libusb-1.0-0 usbutils -y \
	&& apt-get clean \
        && rm -rf /var/lib/apt/lists/* 

USER odoo
