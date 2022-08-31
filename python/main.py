import PySimpleGUI as sg
import mysql.connector
from crud_functions import *

db = mysql.connector.connect(
    host='localhost',
    user='root',
    password='root',
    database='course_database'
)
print(db)

commander = db.cursor(prepared=True)

# #################### Login


while True:
    professor = input("\nAre you a professor?[y][n]\n")

    if professor.lower() == "y":
        last_name = input("\nWhat's your last name?\n> ")

        try:
            professor_password = get_passwd(commander, last_name)
        except IndexError:
            print("Verify if your last name was correctly input.")
            continue

        input_password = input("\nPlease insert your password:\n> ")

        if professor_password == input_password:
            pass
        else:
            print("Wrong password for this user.")
            continue

    elif professor.lower() == "n":
        print("\nOnly professors can access.\n")
        break

    else:
        print('\nAnswer with "y" or "n"\n')
        continue

    while True:
        print("\n"
              "+------------------------------+\n" +
              "| What do you wanna do?        |\n" +
              "+------------------------------+\n" +
              "|                              |\n" +
              "| 1.Operations                 |\n" +
              "|                              |\n" +
              "| 2.Logout                     |\n" +
              "|                              |\n" +
              "+------------------------------+\n")
        option = int(input("> "))

        if option == 1:
            print("\n"
                  "+----------------------------------+\n" +
                  "| What do you wanna do?            |\n" +
                  "+----------------------------------+\n" +
                  "|                                  |\n" +
                  "| 1.Insert new student             |\n" +
                  "|                                  |\n" +
                  "| 2.Remove student(needs id)       |\n" +
                  "|                                  |\n" +
                  "| 3.Read student's info(needs id)  |\n" +
                  "|                                  |\n" +
                  "| 4.Update or insert grade         |\n" +
                  "|                                  |\n" +
                  "| 5.Get student's id               |\n" +
                  "|                                  |\n" +
                  "+----------------------------------+\n")

            sub_option = int(input("> "))

            if sub_option == 1:
                full_name = input("\nInsert student's full name\n> ")
                first_name = full_name.split(" ")[0]
                last_name = full_name.split(" ")[1]

                add_student(commander, db, first_name, last_name)
                print("Successful!")

            elif sub_option == 2:
                identifier = int(input("\nInsert student's id\n> "))

                remove_student(commander, db, identifier)
                print("Successful!")

            elif sub_option == 3:
                identifier = int(input("\nInsert student's id\n> "))

                get_info_by_id(commander, identifier)
                print("Successful!")

            elif sub_option == 4:
                identifier = int(input("\nInsert student's id\n> "))

                update_insert_grade(commander, db, identifier)
                print("Successful!")

            elif sub_option == 5:
                student_id = get_id_by_name(commander)
                print(student_id)

        if option == 2:
            break

    break
