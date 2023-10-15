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

    public void populate() {
        log.info("Started V4_mongodb migration");

        var cursor = mt.getCollection("migration").find().cursor();

        if (cursor.hasNext()) {

            var item = cursor.next();

            List<String> list = item.get("collections", List.class);

            if (list.contains(collection)) {
                log.info("skipping mongodb migration");
                return;
            }

            log.info("populating collection : {}", collection);
            migrate(item, collection);
        } else {
            migrate(null, collection);
        }
    }

    private void migrate(Document document, String collection) {
        populateSampleData();

        if ( document != null ) {
            List<String> list = document.get("collections", List.class);
            list.add(collection);

            mt.save(document, "migration");
        } else {
            Migration migration = new Migration();
            migration.getCollections().add(collection);
            mt.save(migration);
        }
    }

    protected abstract void populateSampleData() ;
}