DELIMITER ;;

CREATE TRIGGER after_insert_on_main_users AFTER INSERT ON main_users FOR EACH ROW BEGIN SET @message_id = (SELECT lib_mysqludf_amqp_sendjson('amqp://mysql:5ecr3t@mq', 'sor', 'sor_person', json_object('payload',json_object('id',NEW.employeeId,'names',json_array(json_object('givenName',NEW.firstname,'familyName',NEW.lastname,'formatted',NEW.userfullname)),'emails',json_array(json_object('value',NEW.emailaddress,'type','primary')),'phoneNumbers',json_array(json_object('value','9194450056')))))); END;;

DELIMITER ;
