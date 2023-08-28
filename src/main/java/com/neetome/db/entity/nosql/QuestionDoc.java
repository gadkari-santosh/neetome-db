package com.neetome.db.entity.nosql;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public abstract class QuestionDoc {

    // question set id :: <counter>
    private String id;

    private String text;

    private String image;

    private String explanation;
}
