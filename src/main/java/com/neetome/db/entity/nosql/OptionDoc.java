package com.neetome.db.entity.nosql;

import lombok.Builder;
import lombok.Getter;

@Builder
@Getter
public class OptionDoc {

    private String image;
    private String value;
}
