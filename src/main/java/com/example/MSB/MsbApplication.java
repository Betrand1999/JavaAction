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
<<<<<<< HEAD
        return "<h1>Hello, Containers</h1><h3>Execute in Background ...</h3>";
=======
        return "<h1>Hello, Containers</h1><h3>Execute in Background ..</h3>";
>>>>>>> 5e4d4c17dc48d54ceaa3efcbfeba4468049fabf7
    }
	public static void main(String[] args) {
		SpringApplication.run(MsbApplication.class, args);
	}

}
