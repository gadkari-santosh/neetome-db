package com.neetome.db.repository.nosql;

import com.neetome.db.entity.nosql.collection.PracticeQuestionSetCollection;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.mongodb.repository.MongoRepository;

import java.util.List;

public interface PracticeQuestionSetCollectionRepository extends MongoRepository<PracticeQuestionSetCollection,String> {

}
