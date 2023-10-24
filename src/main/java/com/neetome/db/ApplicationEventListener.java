package com.neetome.db;

import db.migration.nosql.DataPopulator;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationListener;
import org.springframework.context.event.ContextRefreshedEvent;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
@Slf4j
public class ApplicationEventListener implements ApplicationListener<ContextRefreshedEvent> {

    @Autowired
    private List<DataPopulator> dataPopulatorList;

    @Override
    public void onApplicationEvent(ContextRefreshedEvent event) {
        try {
            log.info("droppig all collections");
            dataPopulatorList.stream().forEach(DataPopulator::drop);

            log.info("recreating all collections");
            dataPopulatorList.stream().forEach(DataPopulator::populate);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
