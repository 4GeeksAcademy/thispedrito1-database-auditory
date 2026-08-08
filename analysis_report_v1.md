## Inscripciones en 'Intro to Python'
Resultado: 
| student_name | student_email                     | completion_percentage |
| ------------ | --------------------------------- | --------------------- |
| Emily Watson | emily.watson@student.edutrack.com | 85                    |
| Klaus Weber  | klaus.weber@student.edutrack.com  | 92                    |
| Marco Rossi  | marco.rossi@student.edutrack.com  | 88                    |
| Priya Sharma | priya.sharma@student.edutrack.com | 55                    |

## Porcentaje de completition <10
Resultado: 
| student_name    | course_title          | completion_percentage |
| --------------- | --------------------- | --------------------- |
| Lucia Fernandes | Web Design Basics     | 5                     |
| Lucia Fernandes | Digital Marketing 101 | 3                     |
| Lucia Fernandes | Advanced Python       | 0                     |
| Yuki Nakamura   | UI/UX Fundamentals    | 0                     |
| Pierre Dubois   | UI/UX Fundamentals    | 0                     |
## Instructor = NULL
Resultado: 2
## Estudiantes mayor completition porcentage
Resultado: 
| student_name  | student_email                      | course_title           | completion_percentage |
| ------------- | ---------------------------------- | ---------------------- | --------------------- |
| Emily Watson  | emily.watson@student.edutrack.com  | Web Design Basics      | 60                    |
| Priya Sharma  | priya.sharma@student.edutrack.com  | Intro to Python        | 55                    |
| Yuki Nakamura | yuki.nakamura@student.edutrack.com | Data Analysis with SQL | 45                    |
| Emily Watson  | emily.watson@student.edutrack.com  | Advanced Python        | 40                    |
| James Miller  | james.miller@test.com              | Intro to Python        | 30                    |

## Inscripciones en el ultimo año
Resultado:
| id | student_id | student_name    | student_email                        | course_id | course_title           | category    | enrollment_date | completion_percentage | passed | monthly_fee_paid | instructor   |
| -- | ---------- | --------------- | ------------------------------------ | --------- | ---------------------- | ----------- | --------------- | --------------------- | ------ | ---------------- | ------------ |
| 17 | 1          | Emily Watson    | emily.watson@student.edutrack.com    | 5         | Advanced Python        | Programming | 2025-03-05      | 40                    | false  | 69.99            | Carlos Vega  |
| 16 | 6          | Pierre Dubois   | pierre.dubois@student.edutrack.com   | 3         | Data Analysis with SQL | Data        | 2025-02-20      | 20                    | false  | 59.99            | Marta López  |
| 15 | 7          | Priya Sharma    | priya.sharma@student.edutrack.com    | 1         | Intro to Python        | Programming | 2025-01-10      | 55                    | false  | 49.99            | Marta López  |
| 12 | 7          | Priya Sharma    | priya.sharma@student.edutrack.com    | 4         | Digital Marketing 101  | Marketing   | 2024-12-01      | 70                    | true   | 29.99            | Lucia Prades |
| 11 | 6          | Pierre Dubois   | pierre.dubois@student.edutrack.com   | 6         | UI/UX Fundamentals     | Design      | 2024-11-05      | 0                     | false  | 44.99            | null         |
| 10 | 5          | Yuki Nakamura   | yuki.nakamura@student.edutrack.com   | 6         | UI/UX Fundamentals     | Design      | 2024-10-11      | 0                     | false  | 44.99            | null         |
| 9  | 5          | Yuki Nakamura   | yuki.nakamura@student.edutrack.com   | 3         | Data Analysis with SQL | Data        | 2024-09-03      | 45                    | false  | 59.99            | Marta López  |
| 8  | 4          | Marco Rossi     | marco.rossi@student.edutrack.com     | 1         | Intro to Python        | Programming | 2024-08-09      | 88                    | true   | 49.99            | Marta López  |
| 6  | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 4         | Digital Marketing 101  | Marketing   | 2024-07-01      | 3                     | false  | 29.99            | Lucia Prades |
| 14 | 9          | Alex Chen       | alex.chen@test.com                   | 2         | Web Design Basics      | Design      | 2024-06-30      | 10                    | false  | 39.99            | Carlos Vega  |
| 5  | 3          | Lucia Fernandes | lucia.fernandes@student.edutrack.com | 2         | Web Design Basics      | Design      | 2024-06-20      | 5                     | false  | 39.99            | Carlos Vega  |
| 13 | 8          | James Miller    | james.miller@test.com                | 1         | Intro to Python        | Programming | 2024-05-22      | 30                    | false  | 49.99            | Marta López  |
| 4  | 2          | Klaus Weber     | klaus.weber@student.edutrack.com     | 3         | Data Analysis with SQL | Data        | 2024-05-01      | 78                    | true   | 59.99            | Marta López  |
| 2  | 1          | Emily Watson    | emily.watson@student.edutrack.com    | 2         | Web Design Basics      | Design      | 2024-04-15      | 60                    | false  | 39.99            | Carlos Vega  |
| 3  | 2          | Klaus Weber     | klaus.weber@student.edutrack.com     | 1         | Intro to Python        | Programming | 2024-03-12      | 92                    | true   | 49.99            | Marta López  |
| 1  | 1          | Emily Watson    | emily.watson@student.edutrack.com    | 1         | Intro to Python        | Programming | 2024-03-10      | 85                    | true   | 49.99            | Marta López  |

## INSERT Lucia Fernandes into Advanced Python
Resultado:
| student_name    | course_title          |
| --------------- | --------------------- |
| Lucia Fernandes | Web Design Basics     |
| Lucia Fernandes | Digital Marketing 101 |
| Lucia Fernandes | Advanced Python       |

## UPDATE instructor NULL to Pending Assignment
Resultado: 2
## DELETE students with @test.com email
Resultado: 2
## Inscripciones por categoria
Resultado: 
| category    | total_inscripciones |
| ----------- | ------------------- |
| Marketing   | 2                   |
| Programming | 7                   |
| Design      | 4                   |
| Data        | 3                   |

## Promedio de completition por curso
Resultado:
| course_title           | promedio_completado    |
| ---------------------- | ---------------------- |
| UI/UX Fundamentals     | 0.00000000000000000000 |
| Web Design Basics      | 32.5000000000000000    |
| Digital Marketing 101  | 36.5000000000000000    |
| Advanced Python        | 45.0000000000000000    |
| Data Analysis with SQL | 47.6666666666666667    |
| Intro to Python        | 80.0000000000000000    |

## Curso con mas de 3 inscripciones
Resultado: 
| course_title    | total_inscripciones |
| --------------- | ------------------- |
| Intro to Python | 4                   |

## Ingresos totales por curso
Resultado: 
| category    | ingresos_totales |
| ----------- | ---------------- |
| Programming | 409.93           |
| Data        | 179.97           |
| Design      | 169.96           |
| Marketing   | 59.98            |