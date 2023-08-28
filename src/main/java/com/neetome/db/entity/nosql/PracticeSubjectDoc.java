package com.neetome.db.entity.nosql;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class PracticeSubjectDoc {

    private String name;

    private List<ChapterDoc> chapters;
}
