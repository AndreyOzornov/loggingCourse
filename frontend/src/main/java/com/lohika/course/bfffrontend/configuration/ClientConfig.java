package com.lohika.course.bfffrontend.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.reactive.function.client.WebClient;

@Configuration("webClient")
public class ClientConfig {
    @Bean
    public WebClient getWebClient() {
        return WebClient.builder()
                .build();
    }
}
