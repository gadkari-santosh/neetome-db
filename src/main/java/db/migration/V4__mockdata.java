package db.migration;

import com.opencsv.CSVReader;
import org.apache.commons.io.IOUtils;
import org.flywaydb.core.api.migration.BaseJavaMigration;
import org.flywaydb.core.api.migration.Context;
import org.springframework.util.ResourceUtils;

import javax.swing.text.DateFormatter;
import java.io.File;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;

public class V4__mockdata extends BaseJavaMigration {

    private String prepareStatement = "INSERT INTO mock_exam_tbl " +
            "(id,img_name,author_id,exam_id,is_active,exam_dt,exam_duration,mode,full_addr,city,short_addr,contact_phone,grade,contact_name,price,created_on,created_by) " +
            "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

    @Override
    public void migrate(Context context) throws Exception {

        File dataFile = ResourceUtils.getFile("file:/csv/mockdata.csv");

        CSVReader csvReader = new CSVReader(new FileReader(dataFile));
        csvReader.skip(1);

        try {
         Connection connection = context.getConnection();

            connection.createStatement().execute("delete from mock_exam_tbl");
            connection.createStatement().execute("delete from mock_exam_booking_slot_tbl");

            PreparedStatement statement = connection.prepareStatement(prepareStatement);

            String[] line;
            while ((line = csvReader.readNext()) != null) {

                statement.setLong(1,Long.valueOf(line[0])); //id
                statement.setString(2, line[1]); //img_name
                statement.setLong(3, Long.valueOf(line[2])); // author_id
                statement.setLong(4, Long.valueOf(line[3])); // exam_id
                statement.setBoolean(5, Boolean.valueOf(line[4])); // is_active

                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
                Date date = dateFormat.parse(line[5]);
                statement.setDate(6, new java.sql.Date(date.getTime())); // exam_dt
                statement.setLong(7, Long.valueOf(line[14])); // exam_duration
                statement.setString(8, line[6]); // mode
                statement.setString(9, line[7]); // full_addr
                statement.setString(10, line[8]); // city
                statement.setString(11, line[9]); // short_addr
                statement.setString(12, line[10]); // contract
                statement.setString(13, line[11]); // grade
                statement.setString(14, line[12]); // contact name
                statement.setDouble(15, Double.parseDouble(line[13])); //price
                statement.setDate(16, new java.sql.Date(new Date().getTime())); // subjecrs
                statement.setString(17, "test-tool"); //

                statement.addBatch();
            }

            statement.executeBatch();

        } catch (Exception exp) {
            exp.printStackTrace();
        }
    }
}
