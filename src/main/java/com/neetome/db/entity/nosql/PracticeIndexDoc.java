package com.neetome.db.entity.nosql;

import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
public class PracticeIndexDoc {

    private List<PracticeSubjectDoc> subjects = new ArrayList<>();

    private List<PracticeExamDoc> exams = new ArrayList<>();
}
