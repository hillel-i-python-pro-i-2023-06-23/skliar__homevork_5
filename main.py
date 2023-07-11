import faker
import getpass

if __name__ == '__main__':
    print("My name ", faker.Faker().name(), " and i know your name ", getpass.getuser())
