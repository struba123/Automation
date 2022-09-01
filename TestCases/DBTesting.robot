*** Settings ***
Library     DatabaseLibrary
Library     OperatingSystem

Suite Setup     Connect To Database     pymysql     ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown  Disconnect From Database

*** Variables ***
${DBHost}       localhost
${DBName}       mysql
${DBPass}       Bholu17@
${DBPort}       3306
${DBUser}       root


*** Test Cases ***
#create person table
    #${output}=  Execute Sql String    create table person(id integer,first_name varchar(20),last_name varchar(20));
    #Log To Console    ${output}
    #Should Be Equal As Strings    ${output}    None

#Inserting data into person Table
    #Single Record
    #${output}=  Execute Sql String    Insert into person value(101,"John","Cannady");

    #Mutiple records
    #${output}=  Execute Sql Script      ./TestData/mysql_person_insertData.sql
    #Log To Console    ${output}
    #Should Be Equal As Strings    ${output}    None
    
Check David Record Present in Person table
    Check If Exists In Database     select id from mysql.person where first_name="David";

Check Jio Record Not Present in Person Table
    Check If Not Exists In Database    select id from mysql.person where first_name="Jio";

Check Person Table Exist in mysql Database
    Table Must Exist    person

Verify Row Count is Zero
    Row Count Is 0    select * from mysql.person where first_name='xyz';

Verify Row Count is Equal to Some Value
    Row Count Is Equal To X    select * from mysql.person where first_name='David';     1

Verify Row Count is Greater than Some Value
    Row Count Is Greater Than X    select * from mysql.person where first_name='David';    0

Verify Row Count is Less than Some Value
    Row Count Is Less Than X    select * from mysql.person where first_name='David';     5

Update Record in Person Table
    ${output}=  Execute Sql String    Update mysql.person set first_name="Jio" where id=104;
    Log To Console    ${output}
    Should Be Equal As Strings    ${output}    None

Retrieve Records from Person Table
    @{QueryResults}=    Query       select * from mysql.person;
    Log To Console  many    @{QueryResults}

Delete Records from Person Table
    ${output}=  Execute Sql String  Delete from mysql.person;
    Should Be Equal As Strings    ${output}    None

