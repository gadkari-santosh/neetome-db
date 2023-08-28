package com.neetome.db.entity.nosql.collection;

import com.neetome.db.entity.nosql.PracticeIndexDoc;
import com.neetome.db.entity.nosql.enums.GRADE;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.ArrayList;
import java.util.List;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Document(collection = "practice")
public class PracticeCollection {

    @Id
    private String id;

    private Long practiceId;

    private String name;

    private String description;

    private String image;

    private GRADE grade;

    private Long examId;

    private Long authorId;

    private List<String> subjects = new ArrayList<>();

    // 20+ exam set
    // 1000 practice questions etc
    private List<String> features = new ArrayList<>();

    private PracticeIndexDoc index;
}