import faker
import getpass
import random


def calk(a, b):
    return a + b


if __name__ == "__main__":
    print(
        "My name ",
        faker.Faker().name(),
        " and i know your name ",
        getpass.getuser(),
        "and your age",
        calk(random.randint(10, 20), random.randint(10, 20)),
    )
