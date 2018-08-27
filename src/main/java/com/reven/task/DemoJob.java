package com.reven.task;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import org.springframework.scheduling.annotation.Async;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

@Component
public class DemoJob {

    @Scheduled(cron = "0/2 * * * * *")
//    @Scheduled(cron = "${job.cron-expression.demo}")
//    @Async
    public void cronDemo() throws InterruptedException {
        // 获取当前时间
//        Thread.sleep(10000);
        LocalDateTime localDateTime = LocalDateTime.now();
        System.out
                .println("cronDemo，当前时间为:" + localDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
    }

    @Scheduled(cron = "0/4 * * * * *")
//  @Scheduled(cron = "${job.cron-expression.demo}")
//  @Async
    public void cronDemo2() throws InterruptedException {
        // 获取当前时间
//        Thread.sleep(10000);
        LocalDateTime localDateTime = LocalDateTime.now();
        System.out
                .println("cronDemo2，当前时间为:" + localDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
    }

//    @Scheduled(cron = "0/2 * * * * *")
//  @Scheduled(cron = "${job.cron-expression.demo}")
    @Async
    public void cronDemo3() throws InterruptedException {
        // 获取当前时间
        Thread.sleep(10000);
        LocalDateTime localDateTime = LocalDateTime.now();
        System.out
                .println("cronDemo3，当前时间为:" + localDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
    }

//    @Scheduled(initialDelay = 60000, fixedDelayString = "${job.cron-expression.fixedDelay}")
    public void fixedDelayDemo() {
        // 获取当前时间
        LocalDateTime localDateTime = LocalDateTime.now();
        System.out.println(
                "fixedDelayDemo，当前时间为:" + localDateTime.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss")));
    }

}