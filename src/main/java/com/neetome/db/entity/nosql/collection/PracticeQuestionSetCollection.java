package com.neetome.db.entity.nosql.collection;

import com.neetome.db.entity.nosql.QuestionDoc;
import jakarta.persistence.Id;
import lombok.Getter;
import lombok.Setter;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.List;

@Setter
@Getter
@Document(collection = "practiceQuestionSet")
public class PracticeQuestionSetCollection {

    // question set id from cms
    @Id
    private String id;

    private String questionSetId;

    // This comes from cms ( practice-test-contents document)
    private Long practiceTestId;

    private List<QuestionDoc> questions;
}