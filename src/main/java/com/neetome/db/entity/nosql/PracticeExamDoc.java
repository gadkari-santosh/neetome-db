package com.neetome.db.entity.nosql;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class PracticeExamDoc {

    private String id;
    private String description;
    private Integer questionSetSize;
    private Integer marks;
    private Integer durationInMin;

    private List<QuestionSetInfoDoc> questionSets;
}