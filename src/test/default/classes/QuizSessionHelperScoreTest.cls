@isTest 
public with sharing class QuizSessionHelperScoreTest {
    @isTest static void maximumScoreWhereMaxIsMin() {
        QuizSessionHelper quizSessionHelper = new QuizSessionHelper();
        Integer score = quizSessionHelper.computeScore(1, 1, 0);
        System.assertEquals(1000, score);
    }

    @isTest static void minimumScore() {
        QuizSessionHelper quizSessionHelper = new QuizSessionHelper();
        Integer score = quizSessionHelper.computeScore(1, 1, 10);
        System.assertEquals(1000, score);
    }

    @isTest static void mediumScore() {
        QuizSessionHelper quizSessionHelper = new QuizSessionHelper();
        Integer score = quizSessionHelper.computeScore(10, 1, 10);
        System.assertEquals(550, score);        
    }    

    @isTest static void maximumScore() {
        QuizSessionHelper quizSessionHelper = new QuizSessionHelper();
        Integer score = quizSessionHelper.computeScore(10, 1, 9);
        System.assertEquals(500, score);        
    }
}
