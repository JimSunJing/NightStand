package com.jimmy.config;

import com.github.benmanes.caffeine.cache.Caffeine;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cache.CacheManager;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.cache.caffeine.CaffeineCacheManager;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;

import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * 为Spring缓存提供Caffeine的Cache Manager
 */
@Configuration
@EnableCaching
public class CacheManagerConfig {

    // 从application配置文件获取缓存池名称
    @Value("#{'${seconds-cache-names}'.split(',')}")
    private List<String> secondsCacheNameList;

    @Value("#{'${minutes-cache-names}'.split(',')}")
    private List<String> minutesCacheNameList;

    /**
     * 每50秒刷新一次缓存的内容。主要用于翻页的页数total查询，用户的书影音记录count等...
     * @return
     */
    @Bean(name = "caffeineSecondsCache")
    @Primary
    public CacheManager CaffeineCacheManager() {
        CaffeineCacheManager cacheManager = new CaffeineCacheManager();
        Caffeine caffeine = Caffeine.newBuilder()
                .initialCapacity(50)
                .maximumSize(200)
                .expireAfterWrite(50, TimeUnit.SECONDS);
        cacheManager.setCaffeine(caffeine);
        cacheManager.setCacheNames(secondsCacheNameList);
        return cacheManager;
    }

    /**
     * 每10分钟刷新一次的缓存
     * 主要是Nav的查询，由于涉及三个表而且数据内容变化也不大，故可以缓存久点
     * @return
     */
    @Bean(name = "caffeineMinutesCache")
    public CacheManager CaffeineCacheManagerMins() {
        CaffeineCacheManager cacheManager = new CaffeineCacheManager();
        Caffeine caffeine = Caffeine.newBuilder()
                .initialCapacity(50)
                .maximumSize(200)
                .expireAfterWrite(10, TimeUnit.MINUTES);
        cacheManager.setCaffeine(caffeine);
        cacheManager.setCacheNames(minutesCacheNameList);
        return cacheManager;
    }


}
