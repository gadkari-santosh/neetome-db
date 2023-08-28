package com.neetome.db.entity.nosql.enums;

public enum GRADE {

    R("Reception"),
    G_1("1st"),
    G_2("2nd"),
    G_3("3rd"),
    G_4("4th"),
    G_5("5th"),
    G_6("6th"),
    G_7("7th"),
    G_8("8th"),
    G_9("9th"),
    G_10("10th");

    private String name;

    GRADE(String name) {
        this.name = name;
    }

    public static GRADE from(String id) {
        return GRADE.valueOf("GRADE_"+id);
    }

    public String getDisplayName() {
        return name;
    }
}
