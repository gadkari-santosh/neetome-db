package db.migration.nosql;

import lombok.extern.slf4j.Slf4j;
import org.bson.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;

import java.util.List;

@Slf4j
public abstract class DataPopulator {

    @Autowired
    protected MongoTemplate mt;

    protected String collection;

    protected DataPopulator(String collection) {
        this.collection = collection;
    }

    public abstract void drop();

    public void populate() {
        log.info("Started V4_mongodb migration");

            migrate(collection);
    }

    private void migrate(String collection) {
        populateSampleData();

            Migration migration = new Migration();
            migration.getCollections().add(collection);
            mt.save(migration);
    }

    protected abstract void populateSampleData() ;
}