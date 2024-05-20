package com.duongdk.edu.Hiruez.Utils;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;

@Configuration
public class QrcodeConfiguration {
	
	public String getQrcodeBaseIpAndPort() {
		return qrcodeBaseIpAndPort;
	}

	@Value("${qrcode_ipandport}")
	private String qrcodeBaseIpAndPort;
	
}
