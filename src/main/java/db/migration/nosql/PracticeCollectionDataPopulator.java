package db.migration.nosql;

import com.neetome.dao.entity.nosql.*;
import com.neetome.dao.entity.nosql.collection.PracticeCollection;
import com.neetome.dao.entity.nosql.collection.PracticeQuestionSetCollection;
import com.neetome.dao.repository.nosql.PracticeCollectionRepository;
import com.neetome.dao.repository.nosql.PracticeQuestionSetCollectionRepository;
import com.neetome.dto.enums.DIFFICULTY_LEVEL;
import com.neetome.dto.enums.GRADE;
import com.neetome.dto.enums.SUBJECT_NAME;
import lombok.extern.slf4j.Slf4j;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.Arrays;
import java.util.List;

@Slf4j
@Component
public class PracticeCollectionDataPopulator extends DataPopulator {

    @Autowired
    private PracticeCollectionRepository repository;

    @Autowired
    private PracticeQuestionSetCollectionRepository qSetRepository;

    protected PracticeCollectionDataPopulator() {
        super("PracticeCollection");
    }

    @Override
    protected void populateSampleData() {
        PracticeCollection practiceDocument = new PracticeCollection();
        practiceDocument.setName("NTSE 2023 practice");
        practiceDocument.setDescription("1000+ question set for scholership exam");
        practiceDocument.setImage("ntst.png");
        practiceDocument.setGrade(GRADE.G_2);
        practiceDocument.setFeatures(List.of("all maths chapters coverd","100+ questions"));
        practiceDocument.setExamId(3l);
        practiceDocument.setAuthorId(1l);
        practiceDocument.setPracticeId(1001l);

        ChapterDoc chapter1 = new ChapterDoc();
        chapter1.setName("Factors & Percentage");

        TopicDoc topic1 = new TopicDoc();
        topic1.setName("2 level factors");

        var qs1Id = new ObjectId().toString();

        QuestionSetInfoDoc qs1 = new QuestionSetInfoDoc();
        qs1.setId(new ObjectId().toString());
        qs1.setMinScore(50);
        qs1.setLevel(DIFFICULTY_LEVEL.EASY);
        qs1.setSize(40);

        QuestionSetInfoDoc qs2 = new QuestionSetInfoDoc();
        qs2.setId(new ObjectId().toString());
        qs2.setMinScore(50);
        qs2.setLevel(DIFFICULTY_LEVEL.HARD);
        qs2.setSize(40);

        topic1.setQuestionSets(List.of(qs1,qs2));

        chapter1.setTopics(List.of(topic1));

        ChapterDoc chapter2 = new ChapterDoc();
        chapter2.setName("Numbers");

        TopicDoc topic21 = new TopicDoc();
        topic21.setName("Roman");

        String qSetIdEasy = new ObjectId().toString();
        String qSetIdHard = new ObjectId().toString();

        QuestionSetInfoDoc qs21 = new QuestionSetInfoDoc();
        qs21.setId(qSetIdEasy);
        qs21.setMinScore(50);
        qs21.setLevel(DIFFICULTY_LEVEL.EASY);
        qs21.setSize(2);

        QuestionSetInfoDoc qs22 = new QuestionSetInfoDoc();
        qs22.setId(qSetIdHard);
        qs22.setMinScore(10);
        qs22.setLevel(DIFFICULTY_LEVEL.HARD);
        qs22.setSize(2);

        topic21.setQuestionSets(List.of(qs21,qs22));

        chapter2.setTopics(List.of(topic21));

        SubjectDoc subject = new SubjectDoc();
        subject.setName(SUBJECT_NAME.MATHS);
        subject.setChapters(List.of(chapter1,chapter2));

        PracticeIndexDoc index = new PracticeIndexDoc();
        index.setSubjects(Arrays.asList(subject));
        practiceDocument.setIndex(index);

        repository.save(practiceDocument);

        PracticeQuestionSetCollection questionSet = new PracticeQuestionSetCollection();
        questionSet.setId(qSetIdEasy);
        questionSet.setPracticeTestId(1l);

        QuestionDoc q1 = new QuestionDoc();
        q1.setId("64aaf814d88e9506fe950754::1");
        q1.setText("Which of these is a full list of factors of 24?");

        OptionDoc op1 = OptionDoc.builder().value("24, 48, 72, 96").build();
        OptionDoc op2 = OptionDoc.builder().value("1, 2, 3, 4, 6, 8, 12, 24").build();
        OptionDoc op3 = OptionDoc.builder().value("0, 1, 2, 3, 4, 6, 8, 12, 24").build();

        q1.setExplanation("");
        q1.setOptions(List.of(op1,op2,op3));
        q1.setAnswer(op2);

        QuestionDoc q2 = new QuestionDoc();
        q2.setId("64aaf814d88e9506fe950754::2");
        q2.setText("Which of these is a full list of the common factors of 12 and 30?");

        OptionDoc q2Op1 = OptionDoc.builder().value("1, 2, 3, 4, 6").build();
        OptionDoc q2Op2 = OptionDoc.builder().value("1, 2, 4, 6").build();
        OptionDoc q2Op3 = OptionDoc.builder().value("1, 2, 3, 6").build();

        q2.setExplanation("This is test explaination");
        q2.setOptions(List.of(q2Op1,q2Op2,q2Op3));
        q2.setAnswer(q2Op1);

        questionSet.setQuestions(List.of(q1,q2));

        PracticeQuestionSetCollection questionSet2 = new PracticeQuestionSetCollection();
        questionSet2.setId(qSetIdHard);
        questionSet2.setPracticeTestId(1l);

        questionSet.setQuestions(List.of(q1,q2));

        qSetRepository.save(questionSet);
        qSetRepository.save(questionSet2);
    }
}
