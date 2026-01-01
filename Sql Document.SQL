
#### Total Loan Applications
SELECT COUNT(id) AS Total_Applications FROM bank_loan_data

#### MTD Loan Applications
SELECT COUNT(id) AS Total_Applications FROM bank_loan_data

#### PMTD Loan Applications
SELECT COUNT(id) AS Total_Applications FROM bank_loan_data
WHERE MONTH(issue_date) = 11

#### Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan_data
#### MTD Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 12

#### PMTD Total Funded Amount
SELECT SUM(loan_amount) AS Total_Funded_Amount FROM bank_loan_data
WHERE MONTH(issue_date) = 11

#### Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected FROM bank_loan_data
#### MTD Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected FROM bank_loan_data
WHERE MONTH(issue_date) = 12

#### PMTD Total Amount Received
SELECT SUM(total_payment) AS Total_Amount_Collected FROM bank_loan_data
WHERE MONTH(issue_date) = 11

#### Average Interest Rate
SELECT AVG(int_rate)*100 AS Avg_Int_Rate FROM bank_loan_data
#### MTD Average Interest Rate
SELECT AVG(int_rate)*100 AS MTD_Avg_Int_Rate FROM bank_loan_data
WHERE MONTH(issue_date) = 12

#### PMTD Average Interest Rate
SELECT AVG(int_rate)*100 AS PMTD_Avg_Int_Rate FROM bank_loan_data
WHERE MONTH(issue_date) = 11

#### Average DTI
SELECT AVG(dti)*100 AS Avg_DTI FROM bank_loan_data
#### MTD Average DTI
SELECT AVG(dti)*100 AS MTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 12

#### PMTD Average DTI
SELECT AVG(dti)*100 AS PMTD_Avg_DTI FROM bank_loan_data
WHERE MONTH(issue_date) = 11

---

### GOOD LOAN ISSUED
SELECT
    (COUNT(CASE WHEN loan_status = 'Fully Paid' OR loan_status = 'Current' THEN id END) * 100.0) / 
	COUNT(id) AS Good_Loan_Percentage
FROM bank_loan_data

#### Good Loan Percentage
SELECT COUNT(id) AS Good_Loan_Applications FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

#### Good Loan Applications
SELECT SUM(loan_amount) AS Good_Loan_Funded_amount FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

#### Good Loan Funded Amount
SELECT SUM(total_payment) AS Good_Loan_amount_received FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

#### Good Loan Amount Received
SELECT SUM(total_payment) AS Good_Loan_amount_received FROM bank_loan_data
WHERE loan_status = 'Fully Paid' OR loan_status = 'Current'

---

### BAD LOAN ISSUED

#### Bad Loan Percentage

#### Bad Loan Applications

#### Bad Loan Funded Amount

#### Bad Loan Amount Received

---

### LOAN STATUS

#### Loan Status Summary

#### MTD Loan Status Summary

---

## B. BANK LOAN REPORT | OVERVIEW

### Month-wise Analysis

### State-wise Analysis

### Term-wise Analysis

### Employee Length Analysis

### Purpose-wise Analysis

### Home Ownership Analysis

---

### Filter-Based Analysis Example

#### Grade A Filter Analysis
