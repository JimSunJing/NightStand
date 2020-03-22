package com.jimmy.test;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.jimmy.NightstandApplication;
import com.jimmy.entity.Item;
import com.jimmy.entity.RecommendList;
import com.jimmy.service.RecommendListService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.ArrayList;
import java.util.List;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = NightstandApplication.class)
public class RecommendListTest {

    @Autowired
    private RecommendListService recommendListService;

    @Test
    public void insert() {
        RecommendList recommendList = new RecommendList();
        recommendList.setTitle("test insert 1");
        recommendList.setText("text..121321");
        recommendList.setUid(1);
        List<Item> itemList = new ArrayList<>();
        itemList.add(new Item("4576351832",'f',"hahaha"));
        itemList.add(new Item("bjiniou832",'b',"222exq"));
        recommendList.setItems((JSONArray) JSON.toJSON(itemList));

        System.out.println(recommendListService.insertRecommendList(recommendList));
    }

    @Test
    public void find() {
        RecommendList recommendList = recommendListService.findById(1);
        for (Object item : recommendList.getItems()) {
            System.out.println(item);
            System.out.println(((JSONObject) item).get("title"));
            System.out.println(((JSONObject) item).get("id"));
            System.out.println(((JSONObject) item).get("type"));
        }
    }
}
