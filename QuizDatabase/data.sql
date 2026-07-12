USE questiondb;

INSERT INTO question
(id, category, difficultylevel, option1, option2, option3, option4, question_title, right_answer)
VALUES

(1,'Java','Easy','class','interface','extends','implements',
'Which Java keyword is used to create a subclass?','extends'),

(2,'Java','Easy','4','5','6','Compile Error',
'What is the output of: int x = 5; System.out.println(x++);','5'),

(3,'Java','Easy','true','false','0','null',
'What is the default value of an uninitialized boolean variable?','false'),

(4,'Java','Easy','try','throw','catch','finally',
'Which keyword is used to explicitly throw an exception?','throw'),

(5,'Java','Easy',
'It indicates that a variable is constant',
'It indicates that a method can be accessed without creating an instance',
'It indicates that a class cannot be extended',
'It indicates that a variable is a primitive type',
'What does the static keyword mean in Java?',
'It indicates that a method can be accessed without creating an instance'),

(6,'Java','Easy',
'constant int x = 5;',
'final int x = 5;',
'static int x = 5;',
'readonly int x = 5;',
'Which is the correct way to declare a constant variable?',
'final int x = 5;'),

(7,'Java','Easy',
'JDK',
'JRE',
'JVM',
'JIT',
'Which component executes Java bytecode?',
'JVM'),

(8,'Java','Easy',
'public',
'private',
'protected',
'default',
'Which access modifier allows a member to be accessed from anywhere?',
'public'),

(9,'Java','Easy',
'ArrayList',
'HashMap',
'HashSet',
'LinkedList',
'Which Java collection stores data in key-value pairs?',
'HashMap'),

(10,'Java','Easy',
'Object',
'String',
'Integer',
'Character',
'Which class is the superclass of all classes in Java?',
'Object');

INSERT INTO question
(id, category, difficultylevel, option1, option2, option3, option4, question_title, right_answer)
VALUES

(11,'Python','Easy','count()','size()','length()','len()',
'Which function is used to find the length of a list?','len()'),

(12,'Python','Easy','[1,2,3]','(1,2,3)','{1,2,3}','None of these',
'Which of the following represents a Python list?','[1,2,3]'),

(13,'Python','Easy','break','continue','pass','return',
'Which keyword is used to skip the current iteration of a loop?','continue'),

(14,'Python','Easy','random','math','datetime','os',
'Which module is used to generate random numbers?','random'),

(15,'Python','Easy','int','float','str','bool',
'Which Python data type is used to store decimal numbers?','float'),

(16,'Python','Easy','append()','add()','insert()','push()',
'Which list method adds an element at the end of a list?','append()'),

(17,'Python','Easy','==','=','!=','equals()',
'Which operator is used to compare two values?','=='),

(18,'Python','Easy','def','function','func','define',
'Which keyword is used to define a function in Python?','def'),

(19,'Python','Easy','tuple','list','dictionary','set',
'Which Python data structure stores key-value pairs?','dictionary'),

(20,'Python','Easy','range()','loop()','iterate()','repeat()',
'Which function generates a sequence of numbers in a for loop?','range()');

INSERT INTO question
(id, category, difficultylevel, option1, option2, option3, option4, question_title, right_answer)
VALUES

(21,'MySQL','Easy','SELECT','GET','FETCH','SHOW',
'Which SQL statement is used to retrieve data from a table?','SELECT'),

(22,'MySQL','Easy','INSERT','ADD','CREATE','UPDATE',
'Which SQL statement is used to insert new records into a table?','INSERT'),

(23,'MySQL','Easy','UPDATE','ALTER','CHANGE','MODIFY',
'Which SQL statement is used to modify existing records?','UPDATE'),

(24,'MySQL','Easy','DELETE','REMOVE','DROP','ERASE',
'Which SQL statement removes records from a table?','DELETE'),

(25,'MySQL','Easy','WHERE','ORDER BY','GROUP BY','HAVING',
'Which clause is used to filter records?','WHERE'),

(26,'MySQL','Easy','COUNT()','SUM()','AVG()','TOTAL()',
'Which SQL function returns the total number of rows?','COUNT()'),

(27,'MySQL','Easy','PRIMARY KEY','FOREIGN KEY','UNIQUE','INDEX',
'Which constraint uniquely identifies each record in a table?','PRIMARY KEY'),

(28,'MySQL','Easy','ASC','DESC','UP','DOWN',
'Which keyword sorts records in descending order?','DESC'),

(29,'MySQL','Easy','INNER JOIN','LEFT JOIN','RIGHT JOIN','FULL JOIN',
'Which JOIN returns only matching rows from both tables?','INNER JOIN'),

(30,'MySQL','Easy','VARCHAR','INT','DATE','BOOLEAN',
'Which MySQL data type is commonly used to store variable-length text?','VARCHAR');