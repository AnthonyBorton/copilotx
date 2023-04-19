import datetime

def parse_expenses (expenses_string) :
    """Parse the list of expenses and return the
    list of triples (date, value, currency).
    Ignore lines starting with #.
    Parse the date using datetime.
    Example expenses_string :
        2023-01-02 -34.01 USD
        2023-01-03 2.59 DKK
        2023-01-03 -2.72 EUR
    """
    expenses = []
    for line in expenses_string.splitlines():
        if line.startswith("#"):
            continue
        date, value, currency = line.split(",")
        expenses.append((float (value),
                        currency,
                        datetime.datetime.strptime(date, "%Y-%m-%d")))
    return expenses

expenses_data = '''2023-01-02 -34.01 USD
2023-01-03 2.59 DKK
2023-01-03 -2.72 EUR'''

expenses = parse_expenses (expenses_data)
for expense in expenses:
    print (f'{expense[0]} {expense[1]} {expense[2]}')


