package com.neetome.db.entity.nosql;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class McqQuestionDoc extends QuestionDoc {

    private List<OptionDoc> options;

    private OptionDoc answer;
}
