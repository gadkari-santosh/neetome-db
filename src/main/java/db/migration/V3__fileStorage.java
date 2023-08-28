package db.migration;

import lombok.extern.slf4j.Slf4j;
import org.flywaydb.core.api.migration.BaseJavaMigration;
import org.flywaydb.core.api.migration.Context;
import org.springframework.stereotype.Component;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.io.FileInputStream;
import java.sql.PreparedStatement;

@Slf4j
@Component
public class V3__fileStorage extends BaseJavaMigration {

    private String query = "INSERT INTO file_storage_tbl (name, type, data) VALUES (?, ?, ?)";

    @Override
    public void migrate(Context context) throws Exception {
        log.info("Started v3_filestorage mibration");


        try (PreparedStatement insert = context.getConnection().prepareStatement(query)) {

            File[] files = ResourceUtils.getFile("file:/file-storage").listFiles();

            for ( File file : files ) {
                insert.setString(1, file.getName());
                insert.setString(2,"image/png");
                insert.setBlob(3, new FileInputStream(file));

                insert.execute();

                log.info("Inserted file name {}", file.getName());
            }
        }
    }
}
