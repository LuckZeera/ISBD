USE F1;

CREATE USER 'luizsoriano'@'localhost' IDENTIFIED BY '1322';
CREATE USER 'lucasdecastro'@'localhost' IDENTIFIED BY '2411';
CREATE USER 'cauaoliveira'@'localhost' IDENTIFIED BY '5469';

GRANT SELECT ON F1.* TO 'luizsoriano'@'localhost';
GRANT EXECUTE ON F1.* TO 'lucasdecastro'@'localhost';
GRANT SELECT ON F1.Fã TO 'cauaoliveira'@'localhost';

REVOKE SELECT ON F1.* FROM 'luizsoriano'@'localhost';
REVOKE EXECUTE ON F1.* FROM 'lucasdecastro'@'localhost';
REVOKE SELECT ON F1.Fã FROM 'cauaoliveira'@'localhost';