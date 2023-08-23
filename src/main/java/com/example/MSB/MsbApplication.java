package com.example.MSB;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class MsbApplication {

    @GetMapping("/")
    public String hello() {
        return "<h1>Hello, Containers...</h1><h3>Execute in Background ...</h3>";
    }
	public static void main(String[] args) {
		SpringApplication.run(MsbApplication.class, args);
	}

}
