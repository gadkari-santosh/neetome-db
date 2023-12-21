package db.migration.nosql;


import com.neetome.dao.entity.nosql.*;
import com.neetome.dao.entity.nosql.collection.AcademicLectureCollection;
import com.neetome.dao.entity.nosql.collection.AcademicsIndexCollection;
import com.neetome.dao.entity.nosql.collection.AcademicsQuestionSetCollection;
import com.neetome.dao.entity.nosql.collection.RevisionCardsCollection;
import com.neetome.dao.repository.nosql.AcademicLectureCollectionRepository;
import com.neetome.dao.repository.nosql.AcademicsIndexCollectionRepository;
import com.neetome.dao.repository.nosql.AcademicsQuestionSetCollectionRepository;
import com.neetome.dao.repository.nosql.RevisionCardsCollectionRepository;
import com.neetome.dto.enums.*;
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

    @Autowired
    private AcademicLectureCollectionRepository lectureCollectionRepository;

    @Autowired
    private RevisionCardsCollectionRepository revisionCardsCollectionRepository;

    protected AcademicsCollectionDataPopulator() {
        super("AcademicsCollection");
    }

    @Override
    public void drop() {
        repository.deleteAll();
        lectureCollectionRepository.deleteAll();
        questionSetCollectionRepository.deleteAll();
        revisionCardsCollectionRepository.deleteAll();
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

        var mathSubjecct = getMathSubject(qs1Id,qs2Id,qs3Id,qs4Id);
        var englishSubject = getEnglishSubject(qs1Id,qs2Id,qs3Id,qs4Id);

        index.setSubjects(Arrays.asList(mathSubjecct, englishSubject));

        repository.save(index);

        questionSetCollectionRepository.save(generateQuestionSet(qs1Id, 1l));
        questionSetCollectionRepository.save(generateQuestionSet(qs2Id, 1l));
        questionSetCollectionRepository.save(generateQuestionSet(qs3Id, 1l));
        questionSetCollectionRepository.save(generateQuestionSet(qs4Id, 1l));
    }

    private RevisionCardsCollection getRevisionCards(String id, String title, SUBJECT_NAME subjectName) {

        RevisionCardsCollection revisionCardsCollection = new RevisionCardsCollection();
        revisionCardsCollection.setGrade(GRADE.G_3);
        revisionCardsCollection.setId(id);
        revisionCardsCollection.setTitle(title);
        revisionCardsCollection.setCardImages(List.of("r1.png","r2.png","r3.png"));
        revisionCardsCollection.setSubject(subjectName);

        return revisionCardsCollection;
    }

    private SubjectDoc getMathSubject(String qs1Id, String qs2Id, String qs3Id, String qs4Id) {
        SubjectDoc subject = new SubjectDoc();
        subject.setName(SUBJECT_NAME.MATHS);

        subject.setId(new ObjectId().toString());
        subject.setIcon("maths_subject.png");

        ChapterDoc chapter1 = new ChapterDoc();
        chapter1.setId("1");
        chapter1.setName("Real Numbers");

        chapter1.setPracticeCards(Arrays.asList(getPS(EASY,qs1Id)));

        var rId = new ObjectId();
        var rcollection = getRevisionCards(rId.toString(),"Real Numbers", SUBJECT_NAME.MATHS);
        revisionCardsCollectionRepository.save(rcollection);
        RevisionCardRefDoc refDoc = new RevisionCardRefDoc();
        refDoc.setId(rId.toString());
        refDoc.setTitle("Real Numbers");
        chapter1.setRevisionCards(List.of(refDoc));

        TopicDoc topic1 = new TopicDoc();
        topic1.setId("1.1");
        topic1.setName("The Fundamental Theorem of Arithmetic");
        topic1.setQuestionSets(Arrays.asList(getQS(EASY,qs1Id)));

        AcademicLectureCollection lectureCollection = new AcademicLectureCollection();
        lectureCollection.setGrade(GRADE.G_3);
        lectureCollection.setContentType(CONTENT_TYPE.PDF_FILE);
        lectureCollection.setData("ceap115.pdf");
        lectureCollection.setTitle("The Fundamental Theorem of Arithmetic");
        lectureCollection.setMedium(MEDIUM.ENGLISH);

        var savedCollection = lectureCollectionRepository.save(lectureCollection);

        LectureRefDoc ref = new LectureRefDoc();
        ref.setOrderId(1);
        ref.setTitle("The Fundamental Theorem of Arithmetic");
        ref.setId(savedCollection.getId());

        topic1.setLectures(List.of(ref));

        TopicDoc topic2 = new TopicDoc();
        topic2.setId("1.2");
        topic2.setName("Revisiting Irrational Numbers");
        topic2.setQuestionSets(Arrays.asList(getQS(EASY,qs2Id)));

        topic2.setLectures(List.of(ref));

        chapter1.setTopics(Arrays.asList(topic1, topic2));

        ChapterDoc chapter2 = new ChapterDoc();
        chapter2.setId("2");
        chapter2.setName("Polynomials");

        chapter2.setPracticeCards(Arrays.asList(getPS(EASY,qs3Id)));

        RevisionCardRefDoc refDoc2 = new RevisionCardRefDoc();
        refDoc2.setId(rId.toString());
        refDoc2.setTitle("Polynomials");
        chapter2.setRevisionCards(List.of(refDoc2));

        TopicDoc topic21 = new TopicDoc();
        topic21.setId("2.1");
        topic21.setName("Geometrical Meaning of the Zeroes of a Polynomial ");
        topic21.setQuestionSets(Arrays.asList(getQS(EASY,qs3Id)));

        topic21.setLectures(List.of(ref));

        TopicDoc topic22 = new TopicDoc();
        topic22.setId("2.2");
        topic22.setName("Relationship between Zeroes and Coefficients of a Polynomial");
        topic22.setQuestionSets(Arrays.asList(getQS(EASY,qs4Id)));

        topic22.setLectures(List.of(ref));

        chapter2.setTopics(Arrays.asList(topic21, topic22));

        subject.setChapters(Arrays.asList(chapter1, chapter2));

        return subject;
    }

    private SubjectDoc getEnglishSubject(String qs1Id,String qs2Id,String qs3Id,String qs4Id) {
        SubjectDoc subject = new SubjectDoc();
        subject.setName(SUBJECT_NAME.ENGLISH);
        subject.setId(new ObjectId().toString());
        subject.setIcon("english_subject.png");

        ChapterDoc chapter1 = new ChapterDoc();
        chapter1.setId("1");
        chapter1.setName("Real Numbers");

        chapter1.setPracticeCards(Arrays.asList(getPS(EASY,qs1Id)));

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
        chapter2.setPracticeCards(Arrays.asList(getPS(EASY,qs4Id)));

        subject.setChapters(Arrays.asList(chapter1, chapter2));

        return subject;
    }

    private QuestionSetInfoDoc getQS(DIFFICULTY_LEVEL level, String id) {
        QuestionSetInfoDoc questionSetInfo = new QuestionSetInfoDoc();
        questionSetInfo.setId(id);
        questionSetInfo.setName("Set ("+level+")");

        return questionSetInfo;
    }

    private PracticeCardRefDoc getPS(DIFFICULTY_LEVEL level, String id) {
        PracticeCardRefDoc questionSetInfo = new PracticeCardRefDoc();
        questionSetInfo.setId(id);
        questionSetInfo.setTitle("Test ("+level+")");

        return questionSetInfo;
    }

    private AcademicsQuestionSetCollection generateQuestionSet(String id, Long boardId) {

        AcademicsQuestionSetCollection qs = new AcademicsQuestionSetCollection();
        qs.setName("Question Set");
        qs.setDescription("question-set-description");
        qs.setNegativeMark(0f);
        qs.setGrade(GRADE.G_3);
        qs.setTotalMarks(10.0f);
        qs.setMarksPerQuestion(1.0f);
        qs.setTotalTime(-1f);

        String questionFormat = "Add {0} and {1}";

        List<QuestionDoc> questions = new ArrayList<>();

        for ( int i=0; i< 10; i++) {
            QuestionDoc q1 = new QuestionDoc();
            q1.setId(new ObjectId().toString());
            q1.setText(MessageFormat.format(questionFormat, i, i+4));
            q1.setQuestionType(QUESTION_TYPE.SINGLE_SELECT);

            OptionDoc op1 = OptionDoc.builder().value(MessageFormat.format("{0}",2*i+2)).build();
            OptionDoc op2 = OptionDoc.builder().value(MessageFormat.format("{0}",2*i+4)).correct(true).build();
            OptionDoc op3 = OptionDoc.builder().value(MessageFormat.format("{0}",2*i+3)).build();

            q1.setExplanation("");
            q1.setOptions(List.of(op1, op2, op3));

            questions.add(q1);
        }

        qs.setQuestions(questions);
        qs.setId(new ObjectId().toString());

        qs.setQuestionSetId(id);

        return qs;
    }
}
