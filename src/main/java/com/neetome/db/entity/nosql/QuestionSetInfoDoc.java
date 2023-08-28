package com.neetome.db.entity.nosql;

import com.neetome.db.entity.nosql.enums.DIFFICULTY_LEVEL;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class QuestionSetInfoDoc {

    private String id;

    private DIFFICULTY_LEVEL level;

    private Integer size;

    private Integer minScore;
}
