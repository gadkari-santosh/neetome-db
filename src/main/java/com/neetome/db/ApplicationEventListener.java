package com.neetome.db;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

@Component
public class ApplicationEventListener implements ApplicationListener<ContextRefreshedEvent> {

    @Autowired
    Mongodb mongodb;

    @Override
    public void onApplicationEvent(ContextRefreshedEvent event) {
        try {
            mongodb.migrate(null);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
