package com.wangwb.firstspringbootproject;

import org.springframework.boot.SpringApplication;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RestController;

@RestController
@SpringBootApplication
public class FirstSpringBootProjectApplication {

    public static void main(String[] args) {
        SpringApplication.run(FirstSpringBootProjectApplication.class, args);
    }
    @RequestMapping
    public String hello() {
        return "hello spring boot! v2.0";
    }
}
