package com.neetome.db.repository.nosql;

import com.neetome.db.entity.nosql.collection.PracticeCollection;
import org.springframework.data.mongodb.repository.MongoRepository;


public interface PracticeCollectionRepository extends MongoRepository<PracticeCollection, String> {

}