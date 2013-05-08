public class ProgressCalendar {
    
    public String id{set; get;}
    public Study__c s{set;get;}
    public List<Progress__c> p {set;get;}
    public String selCourse{set;get;}
    public String somevariable{set;get;}
    
    public ProgressCalendar(ApexPages.StandardController controller) {
        id = apexpages.currentpage().getparameters().get('id');
        Study__c ss = [select Contact__r.name,Contact__c from Study__c where id=:id];
        s = [SELECT id,Name,Class__c,Contact__r.name,Subject__r.name FROM Study__c WHERE Contact__c='003i0000007YstQ' limit 1] ;//   :ss.Contact__c  ];
        
        p = [SELECT Course__c,Course__r.name,Subject__c,Set__r.name,Set__c,Study__c,ProgressDate__c,Subject__r.name  FROM Progress__c WHERE (Study__c =: s.id and (Course__c='a0Vi00000009Ujw' OR Course__c='a0Vi00000009Ujx' OR Course__c='a0Vi00000009UjyEAE' OR Course__c='a0Vi00000009UjzEAE' OR Course__c='a0Vi00000009Uk0EAE')) ORDER BY Set__c ASC];
        List<Course__c> cour = [select id,name from Course__c];
    }

    
    
    public ProgressCalendar (){
        /*id = apexpages.currentpage().getparameters().get('id');
        Study__c ss = [select Contact__r.name,Contact__c from Study__c where id=:id];
        s = [SELECT id,Name,Class__c,Contact__r.name,Subject__r.name FROM Study__c WHERE Contact__c=:ss.Contact__c  ];
        
        p = [SELECT Course__c,Course__r.name,Set__r.name,Set__c,Study__c,ProgressDate__c,Subject__r.name  FROM Progress__c WHERE (Study__c =: s.id and (Course__c='a0Vi00000009Ujw' OR Course__c='a0Vi00000009Ujx' OR Course__c='a0Vi00000009UjyEAE' OR Course__c='a0Vi00000009UjzEAE' OR Course__c='a0Vi00000009Uk0EAE')) ORDER BY Set__c ASC];
        List<Course__c> cour = [select id,name from Course__c];
        
        */
        //for(integer i=0; i<30;i++){
            //p.add([SELECT Course__c,Course__r.name,Set__r.name,Set__c,Study__c,ProgressDate__c,Subject__r.name  FROM Progress__c WHERE (Study__c =: s.id and Course__c=:cour[i].id) ORDER BY Set__c ASC]);        
        
        //}
        //system.debug('--------'+p);
        
    }
    
   public List<SelectOption> getItems() {
        List<SelectOption> options = new List<SelectOption>();        
        for(integer i=1;i<33;i++){
            options.add(new SelectOption(''+i+'',''+i+''));
        }

        return options;
    }
    
    public void doStuff(){
        system.debug('----somevariable-----'+somevariable);
    }

}