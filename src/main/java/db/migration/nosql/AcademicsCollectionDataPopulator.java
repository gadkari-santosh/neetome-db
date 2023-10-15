package db.migration.nosql;

import com.neetome.dao.entity.nosql.*;
import com.neetome.dao.entity.nosql.collection.AcademicsIndexCollection;
import com.neetome.dao.entity.nosql.collection.AcademicsQuestionSetCollection;
import com.neetome.dao.repository.nosql.AcademicsIndexCollectionRepository;
import com.neetome.dao.repository.nosql.AcademicsQuestionSetCollectionRepository;
import com.neetome.dto.enums.DIFFICULTY_LEVEL;
import com.neetome.dto.enums.GRADE;
import com.neetome.dto.enums.SUBJECT_NAME;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.text.MessageFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import static com.neetome.dto.enums.DIFFICULTY_LEVEL.EASY;

@Component
public class AcademicsCollectionDataPopulator extends DataPopulator {

    @Autowired
    private AcademicsIndexCollectionRepository repository;

    @Autowired
    private AcademicsQuestionSetCollectionRepository questionSetCollectionRepository;

    protected AcademicsCollectionDataPopulator() {
        super("AcademicsCollection");
    }

    @Override
    protected void populateSampleData() {

        String qs1Id = new ObjectId().toString();
        String qs2Id = new ObjectId().toString();
        String qs3Id = new ObjectId().toString();
        String qs4Id = new ObjectId().toString();

        AcademicsIndexCollection index = new AcademicsIndexCollection();
        index.setBoardId(1l);
        index.setGrade(GRADE.G_3);

        SubjectDoc subject = new SubjectDoc();
        subject.setName(SUBJECT_NAME.MATHS);
        subject.setId(new ObjectId().toString());
        subject.setIcon("maths_subject.png");

        ChapterDoc chapter1 = new ChapterDoc();
        chapter1.setId("1");
        chapter1.setName("Real Numbers");

        TopicDoc topic1 = new TopicDoc();
        topic1.setId("1.1");
        topic1.setName("The Fundamental Theorem of Arithmetic");
        topic1.setQuestionSets(Arrays.asList(getQS(EASY,qs1Id)));

        TopicDoc topic2 = new TopicDoc();
        topic2.setId("1.2");
        topic2.setName("Revisiting Irrational Numbers");
        topic2.setQuestionSets(Arrays.asList(getQS(EASY,qs2Id)));

        chapter1.setTopics(Arrays.asList(topic1, topic2));

        ChapterDoc chapter2 = new ChapterDoc();
        chapter2.setId("2");
        chapter2.setName("Polynomials");

        TopicDoc topic21 = new TopicDoc();
        topic21.setId("2.1");
        topic21.setName("Geometrical Meaning of the Zeroes of a Polynomial ");
        topic21.setQuestionSets(Arrays.asList(getQS(EASY,qs3Id)));

        TopicDoc topic22 = new TopicDoc();
        topic22.setId("2.2");
        topic22.setName("Relationship between Zeroes and Coefficients of a Polynomial");
        topic22.setQuestionSets(Arrays.asList(getQS(EASY,qs4Id)));

        chapter2.setTopics(Arrays.asList(topic21, topic22));

        subject.setChapters(Arrays.asList(chapter1, chapter2));

        index.setSubjects(Arrays.asList(subject));

        repository.save(index);

        questionSetCollectionRepository.save(generateQuestionSet(qs1Id, 1l));
        questionSetCollectionRepository.save(generateQuestionSet(qs2Id, 1l));
        questionSetCollectionRepository.save(generateQuestionSet(qs3Id, 1l));
        questionSetCollectionRepository.save(generateQuestionSet(qs4Id, 1l));
    }

    private QuestionSetInfoDoc getQS(DIFFICULTY_LEVEL level, String id) {
        QuestionSetInfoDoc questionSetInfo = new QuestionSetInfoDoc();
        questionSetInfo.setLevel(level);
        questionSetInfo.setSize(10);
        questionSetInfo.setId(id);

        return questionSetInfo;
    }

    private AcademicsQuestionSetCollection generateQuestionSet(String id, Long boardId) {

        AcademicsQuestionSetCollection qs = new AcademicsQuestionSetCollection();

        String questionFormat = "Add {0} and {1}";

        List<QuestionDoc> questions = new ArrayList<>();

        for ( int i=0; i< 10; i++) {
            QuestionDoc q1 = new QuestionDoc();
            q1.setId(new ObjectId().toString());
            q1.setText(MessageFormat.format(questionFormat, i, i+4));

            OptionDoc op1 = OptionDoc.builder().value(MessageFormat.format("{0}",2*i+2)).build();
            OptionDoc op2 = OptionDoc.builder().value(MessageFormat.format("{0}",2*i+4)).build();
            OptionDoc op3 = OptionDoc.builder().value(MessageFormat.format("{0}",2*i+3)).build();

            q1.setExplanation("");
            q1.setOptions(List.of(op1, op2, op3));
            q1.setAnswer(op2);

            questions.add(q1);
        }

        qs.setQuestions(questions);
        qs.setId(new ObjectId().toString());
        qs.setBoardId(boardId);
        qs.setQuestionSetId(id);

        return qs;
    }
}
