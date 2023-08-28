package com.neetome.db.entity.nosql;


import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Setter
@Getter
public class TopicDoc {

    private String name;

    private List<QuestionSetInfoDoc> questionSets;

}
