package db.migration.nosql;

import com.neetome.dao.entity.nosql.*;
import com.neetome.dao.entity.nosql.collection.PracticeCollection;
import com.neetome.dao.entity.nosql.collection.PracticeQuestionSetCollection;
import com.neetome.dao.repository.nosql.PracticeCollectionRepository;
import com.neetome.dao.repository.nosql.PracticeQuestionSetCollectionRepository;
import com.neetome.dto.enums.DIFFICULTY_LEVEL;
import com.neetome.dto.enums.GRADE;
import com.neetome.dto.enums.SUBJECT_NAME;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.io.FileUtils;
import org.bson.Document;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Component;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Arrays;
import java.util.List;

@Slf4j
@Component
public class PracticeCollectionDataPopulator extends DataPopulator {

    @Autowired
    private PracticeCollectionRepository repository;

    @Autowired
    private MongoTemplate mongo;

    @Autowired
    private PracticeQuestionSetCollectionRepository qSetRepository;

    protected PracticeCollectionDataPopulator() {
        super("PracticeCollection");
    }

    @Override
    public void drop() {
        repository.deleteAll();
        qSetRepository.deleteAll();
    }

    @Override
    protected void populateSampleData() {

        try {

            mongo.dropCollection("practiceTestBooklets");
            mongo.dropCollection("practiceQuestionSet");

            String[] pc = new String[] {"practice_collection1.json","practice_collection2.json","practice_collection3.json","practice_collection4.json","practice_collection5.json"};

            for (String qs : pc ) {
                String json = FileUtils.readFileToString(
                        ResourceUtils.getFile("file:/nosql/"+qs));
                var doc = Document.parse(json);
                mongo.insert(doc, "practiceTestBooklets");
            }

            String[] qss = new String[] {"practice_qs1.json","practice_qs2.json","practice_qs3.json","practice_qs4.json"};
            for (String qs : qss ) {
                String json1 = FileUtils.readFileToString(
                        ResourceUtils.getFile("file:./nosql/"+qs));
                var doc1 = Document.parse(json1);
                mongo.insert(doc1, "practiceQuestionSet");
            }

        } catch (Exception e) {
            log.error("Unable to store data into practice collection", e);
        }
    }
}
