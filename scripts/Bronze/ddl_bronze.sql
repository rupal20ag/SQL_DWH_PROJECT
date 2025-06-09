/*
there are two sources:
CRM 
ERP
here, we have created tables coming from these sources in the bronze layer
*/

--if the table name exists then drop and recreate
if object_id('bronze.crm_cust_info','U') is not null
drop table bronze.crm_cust_info

create table bronze.crm_cust_info
(
cst_id int,
cst_key nvarchar(50),
cst_firstname nvarchar(50),
cst_lastname nvarchar(50),
cst_marital_status nvarchar(50),
cst_gndr nvarchar(50),
cst_create_date date
);

if object_id('bronze.crm_prd_info','U') is not null
drop table bronze.crm_prd_info

CREATE TABLE bronze.crm_prd_info (
    prd_id       INT,
    prd_key      NVARCHAR(50),
    prd_nm       NVARCHAR(50),
    prd_cost     INT,
    prd_line     NVARCHAR(50),
    prd_start_dt DATETIME,
    prd_end_dt   DATETIME
);
GO

if object_id('bronze.crm_sales_details','U') is not null
drop table bronze.crm_sales_details

CREATE TABLE bronze.crm_sales_details (
    sls_ord_num  NVARCHAR(50),
    sls_prd_key  NVARCHAR(50),
    sls_cust_id  INT,
    sls_order_dt INT,
    sls_ship_dt  INT,
    sls_due_dt   INT,
    sls_sales    INT,
    sls_quantity INT,
    sls_price    INT
);
GO

if object_id('bronze.erp_loc_a101','U') is not null
drop table bronze.erp_loc_a101

CREATE TABLE bronze.erp_loc_a101 (
    cid    NVARCHAR(50),
    cntry  NVARCHAR(50)
);
GO

if object_id('bronze.erp_cust_az12','U') is not null
drop table bronze.erp_cust_az12

CREATE TABLE bronze.erp_cust_az12 (
    cid    NVARCHAR(50),
    bdate  DATE,
    gen    NVARCHAR(50)
);
GO

if object_id('bronze.erp_px_cat_g1v2','U') is not null
drop table bronze.erp_px_cat_g1v2

CREATE TABLE bronze.erp_px_cat_g1v2 (
    id           NVARCHAR(50),
    cat          NVARCHAR(50),
    subcat       NVARCHAR(50),
    maintenance  NVARCHAR(50)
);
GO
