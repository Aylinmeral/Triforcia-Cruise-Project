public class flowv1challange2 {
    public Opportunity findOp(){
       Opportunity sop= [SELECT Amount, Id, Name, StageName, AccountId 
         FROM Opportunity WHERE StageName='Closed Won' ORDER BY Amount ASC LIMIT 1];
             return sop;
    }
    public String createTask(String Subj, String Stat, Date ActDate,String lookupAcc){
       Task singleTask= New Task();
        
        singleTask.Subject=Subj;
        singleTask.WhatId=lookupAcc;
        singleTask.Status=Stat;
        singleTask.ActivityDate=ActDate;
        
        insert singleTask;
        
        return singleTask.id;
              
    }
}