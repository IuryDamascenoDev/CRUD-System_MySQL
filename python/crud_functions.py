from random import seed, randint


def get_passwd(commander, name):
    username = []
    username.append(name)

    sql = "SELECT ProfessorId FROM Professors WHERE LastName=%s"
    commander.execute(sql, username)
    identifier = commander.fetchall()

    id_value = []
    id_value.append(identifier[0][0])

    sql = "SELECT Password FROM ProfessorsPasswords WHERE ProfessorId=%s"
    commander.execute(sql, id_value)
    passwd = commander.fetchall()
    return passwd[0][0]


def add_student(commander, db):
    sql = ("INSERT INTO Students (StudentId, FirstName, LastName) VALUES(%s, %s, %s)")

    first_name = input("\nWhat's the first name?\n> ")
    last_name = input("What's the last name?\n> ")

    identifier = create_id(commander)

    values = (identifier, first_name, last_name)

    commander.execute(sql, values)
    db.commit()


def create_id(commander):
    id_list = get_ids(commander)

    while True:
        new_id = randint(1000, 9999)

        check_existence = new_id in (item for sublist in id_list
                                     for item in sublist)

        if check_existence:
            continue
        elif not (check_existence):
            return new_id


def get_ids(commander):
    sql = "SELECT StudentId FROM Students"
    commander.execute(sql)
    id_fetch = commander.fetchall()
    return id_fetch


def get_id_by_name(commander):
    value = []
    name = input("\nInsert student's first name\n> ")
    value.append(name)

    sql = "SELECT StudentId, FirstName, LastName FROM Students WHERE FirstName=%s"

    commander.execute(sql, value)
    id_fetch = commander.fetchall()

    if len(id_fetch):
        return id_fetch
    else:
        return 'No student with that name found.'


def remove_student(commander, db, identifier):
    id_number = []
    id_number.append(identifier)

    sql = "DELETE FROM Students WHERE StudentId IN (%s)"
    commander.execute(sql, id_number)
    db.commit()


def get_info_by_id(commander, identifier):
    id_number = []
    id_number.append(identifier)

    sql = "SELECT * FROM Students WHERE StudentId=%s"
    commander.execute(sql, id_number)
    info = commander.fetchall()
    return info[0]


def update_insert_grade(commander, db, identifier):
    while True:
        column_name = input("Which grade do you wanna change?[1][2]\n")
        if column_name == "1":
            sql = "UPDATE Students SET Grade1 = %s WHERE StudentId = %s"
            break
        elif column_name == "2":
            sql = "UPDATE Students SET Grade2 = %s WHERE StudentId = %s"
            break
        elif column_name != ("1" or "2"):
            print("\nThe options available are: 1 or 2\n")
            continue

    grade = float(input(f"Insert grade {column_name} value\n"))

    values = (grade, identifier)

    commander.execute(sql, values)
    db.commit()
