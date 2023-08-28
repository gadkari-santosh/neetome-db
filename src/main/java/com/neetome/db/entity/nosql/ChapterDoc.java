package com.neetome.db.entity.nosql;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class ChapterDoc {

    private String name;

    private float weightage;

    private List<QuestionSetInfoDoc> questionSets;

    private List<TopicDoc> topics;
}
