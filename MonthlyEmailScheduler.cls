global class MonthlyEmailScheduler implements Schedulable {
    global void execute(SchedulableContext sc) {
        if (Date.today().day() == 1) {
            sendMonthlyEmails();
        }
    }

    public static void sendMonthlyEmails() {
        List<Tenant__c> tenants = [SELECT Id, Email__c FROM Tenant__c];
        for (Tenant__c tenant : tenants) {
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            mail.setToAddresses(new String[]{tenant.Email__c});
            mail.setSubject('Reminder: Monthly Rent Payment Due');
            mail.setPlainTextBody('Please pay your rent for this month. Thank you.');
            Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
        }
    }
}