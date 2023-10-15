package db.migration.nosql;

import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Setter
public class Migration {

    private List<String> collections = new ArrayList<>();
}
