# 🏘️ Lease Management - Salesforce Project

This Salesforce project is a **Lease Management System** to help landlords manage properties, tenants, payments, and rent reminders efficiently.

## 🚀 Features

- Custom Objects: Property, Tenant, Payment
- Lookup & Master-Detail Relationships
- Approval Process for vacating tenants
- Apex Trigger to enforce only one active tenant per property
- Monthly rent reminder emails via Scheduled Apex

---

## 📌 Setup Instructions

### 1️⃣ Object and Field Setup
- **Property__c**: Name, Address, Owner
- **Tenant__c**:
  - Lookup to Property__c
  - Email, Phone, Status (stay/leave)
- **Payment__c**:
  - Master-Detail to Tenant__c
  - Lookup to Property__c
  - Amount, Date

---

### 2️⃣ Relationships

✅ Tenant has Lookup to Property  
✅ Payment has Master-Detail to Tenant and Lookup to Property

---

### 3️⃣ Approval Process

Used to approve tenant move-outs:

✅ Entry Criteria: Status = leave  
✅ Initial Submission Action:
- Record Lock
- Email Alert to Admin

✅ Submission Approval
