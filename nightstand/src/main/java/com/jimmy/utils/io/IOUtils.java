package com.jimmy.utils.io;

import com.jimmy.entity.Finished;
import com.jimmy.entity.Waiting;
import org.apache.commons.csv.CSVFormat;
import org.apache.commons.csv.CSVParser;
import org.apache.commons.csv.CSVRecord;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public class IOUtils {

    public static List<Waiting> csv2Waiting(MultipartFile file, Integer uid){
        List<Waiting> list = new ArrayList<>();
        try {
            InputStreamReader reader = new InputStreamReader(file.getInputStream());
            Iterable<CSVRecord> records = CSVFormat.RFC4180.withFirstRecordAsHeader().parse(reader);
            for (CSVRecord record : records) {
                if (record.get(1).length()>1) continue;
                list.add(new Waiting(uid,record.get("doubanId"),record.get("Type").charAt(0),record.get("title")));
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return list;
    }

    public static List<Finished> csv2Finshed(MultipartFile file, Integer uid){
        List<Finished> list = new ArrayList<>();
        try{
            Iterable<CSVRecord> records = CSVFormat.RFC4180.withFirstRecordAsHeader().parse(new InputStreamReader(file.getInputStream()));
            SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
            for (CSVRecord record : records) {
                if (record.size()<2 || record.get("Type").length()>1) continue;
                list.add(new Finished(uid,record.get("doubanId"),record.get("Type").charAt(0),
                        record.get("title"),sdf.parse(record.get("date")),
                        (record.get("star").equals("")||record.get("star")==null)?null:Integer.parseInt(record.get("star"))));
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ParseException e) {
            e.printStackTrace();
        }
        return list;
    }
}
