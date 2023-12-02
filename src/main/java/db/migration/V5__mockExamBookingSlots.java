package db.migration;

import com.opencsv.CSVReader;
import lombok.extern.slf4j.Slf4j;
import org.flywaydb.core.api.migration.BaseJavaMigration;
import org.flywaydb.core.api.migration.Context;
import org.springframework.util.ResourceUtils;

import java.io.File;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.util.Date;

@Slf4j
public class V5__mockExamBookingSlots extends BaseJavaMigration {

    private String prepareStatement = "INSERT INTO mock_exam_booking_slot_tbl " +
            "(mock_exam_id,total_capacity,total_booked,is_open,is_cancelled,start_time,reporting_time,end_time,price,created_on,created_by)" +
            "VALUES (?,?,?,?,?,?,?,?,?,CURRENT_TIMESTAMP(),'test-tool')";

    @Override
    public void migrate(Context context) throws Exception {

        File dataFile = ResourceUtils.getFile("file:./src/main/resources/mock-exam-booking-slots.csv");

        CSVReader csvReader = new CSVReader(new FileReader(dataFile));
        csvReader.skip(1);

        try {
         Connection connection = context.getConnection();

            connection.createStatement().execute("delete from mock_exam_booking_slot_tbl");

            PreparedStatement statement = connection.prepareStatement(prepareStatement);

            String[] line;
            while ((line = csvReader.readNext()) != null) {

                log.info("id {}", line[0]);
                statement.setLong(1,Long.valueOf(line[0])); //mock_exam_id
                statement.setLong(2,Long.valueOf(line[1])); //total_capacity
                statement.setLong(3,Long.valueOf(line[2])); //total_booked
                statement.setBoolean(4,Boolean.valueOf(line[3])); //is_open
                statement.setBoolean(5,Boolean.valueOf(line[4])); //is_cancelled

                statement.setString(6, line[5]); // start_time
                statement.setString(7, line[6]); // reporting_time
                statement.setString(8, line[7]); // end_time
                statement.setDouble(9, Double.parseDouble(line[8])); // price


                statement.addBatch();
            }

            statement.executeBatch();

        } catch (Exception exp) {
            exp.printStackTrace();
        }
    }
}
