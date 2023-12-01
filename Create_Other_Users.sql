--Execution Order:4
--User: SwadKhajana_admin

CLEAR SCREEN;
/*
CREATE RESTAURANT USER
*/
set SERVEROUTPUT on

BEGIN
    EXECUTE IMMEDIATE 'DROP USER RESTAURANT_SK CASCADE';
    dbms_output.put_line('USER RESTAURANT_SK DROPPED');
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('USER RESTAURANT_SK DOES NOT EXIST');
END;
/

CREATE USER RESTAURANT_SK IDENTIFIED BY SKRestaurant123;

ALTER USER RESTAURANT_SK
    QUOTA UNLIMITED ON data;

GRANT connect, resource TO RESTAURANT_SK WITH ADMIN OPTION;
GRANT SELECT ON DELIVERY_ADDRESS TO RESTAURANT_SK;
GRANT SELECT ON BILLING_ADDRESS TO RESTAURANT_SK;
GRANT SELECT ON CUSTOMER_DETAILS TO RESTAURANT_SK;
GRANT SELECT ON ORDERED_ITEMS TO RESTAURANT_SK;
GRANT SELECT, UPDATE ON ORDER_DETAILS TO RESTAURANT_SK;
GRANT SELECT ON PAYMENT TO RESTAURANT_SK;
GRANT SELECT, INSERT, UPDATE ON ORDER_STATUS TO RESTAURANT_SK;
GRANT SELECT, INSERT, UPDATE ON RESTAURANT TO RESTAURANT_SK;
GRANT SELECT, INSERT, UPDATE ON ITEMS TO RESTAURANT_SK;
GRANT SELECT ON ORDER_TYPE TO RESTAURANT_SK;
GRANT SELECT, INSERT, UPDATE ON BRANCH_ADDRESS TO RESTAURANT_SK;
GRANT SELECT ON DELIVERY_EXECUTIVE TO RESTAURANT_SK;
GRANT SELECT, INSERT, UPDATE ON RESTAURANT_PROMO TO RESTAURANT_SK;
GRANT SELECT, INSERT, UPDATE ON PROMO_CODES TO RESTAURANT_SK;
--Grant permissions on Views
GRANT SELECT, INSERT, UPDATE ON VIEW_TOP_ITEMS TO RESTAURANT_SK;
GRANT SELECT, INSERT, UPDATE ON VIEW_MENU TO RESTAURANT_SK;
GRANT SELECT, INSERT, UPDATE ON VIEW_RESTAURANT_PROMO TO RESTAURANT_SK;
--Grant permissions on Sequences
GRANT SELECT ON BRANCH_ADDRESS_SEQ TO RESTAURANT_SK;
GRANT SELECT ON PROMO_CODES_SEQ TO RESTAURANT_SK;
GRANT SELECT ON RESTAURANT_PROMO_SEQ TO RESTAURANT_SK;
GRANT SELECT ON RESTAURANT_SEQ TO RESTAURANT_SK;
GRANT SELECT ON ITEMS_SEQ TO RESTAURANT_SK;

/*
CREATE CUSTOMER USER
*/
BEGIN
    EXECUTE IMMEDIATE 'DROP USER CUSTOMER_SK CASCADE';
    dbms_output.put_line('USER CUSTOMER_SK DROPPED');
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('USER CUSTOMER_SK DOES NOT EXIST');
END;
/

CREATE USER CUSTOMER_SK IDENTIFIED BY SKCustomer123;

ALTER USER CUSTOMER_SK
    QUOTA UNLIMITED ON data;

GRANT connect, resource TO CUSTOMER_SK;
GRANT SELECT, INSERT, UPDATE ON DELIVERY_ADDRESS TO CUSTOMER_SK;
GRANT SELECT, INSERT, UPDATE ON BILLING_ADDRESS TO CUSTOMER_SK;
GRANT SELECT, INSERT, UPDATE ON CUSTOMER_DETAILS TO CUSTOMER_SK;
GRANT SELECT, INSERT, UPDATE ON ORDERED_ITEMS TO CUSTOMER_SK;
GRANT SELECT, INSERT, UPDATE ON ORDER_DETAILS TO CUSTOMER_SK;
GRANT SELECT ON PAYMENT TO CUSTOMER_SK;
GRANT SELECT ON ORDER_STATUS TO CUSTOMER_SK;
GRANT SELECT ON RESTAURANT TO CUSTOMER_SK;
GRANT SELECT ON ITEMS TO CUSTOMER_SK;
GRANT SELECT ON ORDER_TYPE TO CUSTOMER_SK;
GRANT SELECT ON BRANCH_ADDRESS TO CUSTOMER_SK;
GRANT SELECT ON DELIVERY_EXECUTIVE TO CUSTOMER_SK;
GRANT SELECT ON RESTAURANT_PROMO TO CUSTOMER_SK;
--Grant permissions on Views
GRANT SELECT ON VIEW_CUSTOMER_ORDER TO CUSTOMER_SK;
GRANT SELECT ON VIEW_TOP_RESTAURANTS TO CUSTOMER_SK;
GRANT SELECT ON VIEW_TOP_ITEMS TO CUSTOMER_SK;
GRANT SELECT ON VIEW_MENU TO CUSTOMER_SK;
GRANT SELECT ON VIEW_RESTAURANT_PROMO TO CUSTOMER_SK;
--Grant permissions on Sequences
GRANT SELECT ON CUSTOMER_DETAILS_SEQ TO CUSTOMER_SK;
GRANT SELECT ON DELIVERY_ADDRESS_SEQ TO CUSTOMER_SK;
GRANT SELECT ON BILLING_ADDRESS_SEQ TO CUSTOMER_SK;
GRANT SELECT ON ORDER_ITEMS_SEQ TO CUSTOMER_SK;
GRANT SELECT ON ORDER_DETAILS_SEQ TO CUSTOMER_SK;

/*
CREATE DELIVERY EXECUTIVE USER
*/
BEGIN
    EXECUTE IMMEDIATE 'DROP USER DELIVERY_EXEC_SK CASCADE';
    dbms_output.put_line('USER DELIVERY_EXEC_SK DROPPED');
EXCEPTION
    WHEN OTHERS THEN
        dbms_output.put_line('USER DELIVERY_EXEC_SK DOES NOT EXIST');
END;
/

CREATE USER DELIVERY_EXEC_SK IDENTIFIED BY SKDeliveryexec123;

ALTER USER DELIVERY_EXEC_SK
    QUOTA UNLIMITED ON data;

GRANT connect, resource TO DELIVERY_EXEC_SK;
GRANT SELECT ON DELIVERY_ADDRESS TO DELIVERY_EXEC_SK;
GRANT SELECT ON CUSTOMER_DETAILS TO DELIVERY_EXEC_SK;
GRANT SELECT ON ORDERED_ITEMS TO DELIVERY_EXEC_SK;
GRANT SELECT, UPDATE ON ORDER_DETAILS TO DELIVERY_EXEC_SK;
GRANT SELECT ON PAYMENT TO DELIVERY_EXEC_SK;
GRANT SELECT, INSERT, UPDATE ON ORDER_STATUS TO DELIVERY_EXEC_SK;
GRANT SELECT ON RESTAURANT TO DELIVERY_EXEC_SK;
GRANT SELECT ON ITEMS TO DELIVERY_EXEC_SK;
GRANT SELECT ON ORDER_TYPE TO DELIVERY_EXEC_SK;
GRANT SELECT ON BRANCH_ADDRESS TO DELIVERY_EXEC_SK;
GRANT SELECT, INSERT, UPDATE ON DELIVERY_EXECUTIVE TO DELIVERY_EXEC_SK;
GRANT SELECT ON RESTAURANT_PROMO TO DELIVERY_EXEC_SK;
--Grant Permissions to views
GRANT SELECT ON View_Customer_Order TO DELIVERY_EXEC_SK;
GRANT SELECT ON View_Delivery_Details TO DELIVERY_EXEC_SK;
--Grant permissions on Sequences
GRANT SELECT ON DELIVERY_EXECUTIVE_SEQ TO DELIVERY_EXEC_SK;