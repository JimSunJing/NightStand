package com.jimmy.config;

import com.jimmy.utils.format.dateFormatUtils;
import org.springframework.core.convert.converter.Converter;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * 前端无法处理的数据格式传入的转换器
 * 使用Component注解交给spring管理
 */
@Component
public class DateConverter implements Converter<String, Date> {
    private static final List<String> formats = new ArrayList<>();

    static {
        // 添加格式
        formats.add("yyyy-MM");
        formats.add("yyyy-MM-dd");
        formats.add("yyyy-MM-dd hh:mm");
        formats.add("yyyy-MM-dd hh:mm:ss");
    }

    @Override
    public Date convert(String s) {
        String origin = s.trim();
        if ("".equals(origin)){
            return null;
        }
        if (origin.matches("^\\d{4}-\\d{1,2}$")){
            return dateFormatUtils.string2Date(origin,formats.get(0));
        }else if (origin.matches("^\\d{4}-\\d{1,2}-\\d{1,2}$")){
            return dateFormatUtils.string2Date(origin,formats.get(1));
        }else if (origin.matches("^\\d{4}-\\d{1,2}-\\d{1,2} {1}\\d{1,2}:\\d{1,2}$")){
            return dateFormatUtils.string2Date(origin,formats.get(2));
        }else if (origin.matches("^\\d{4}-\\d{1,2}-\\d{1,2} {1}\\d{1,2}:\\d{1,2}:\\d{1,2}$")){
            return dateFormatUtils.string2Date(origin,formats.get(3));
        }else{
            throw new IllegalArgumentException("Invalid boolean value'" + s + "'");
        }
    }

}
