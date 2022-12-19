# %%
import csv

def getUserAgent(file):
    from user_agents import parse
    reader = csv.reader(open(file, 'r',encoding='UTF-8',errors='ignore'))
    writer = csv.writer(open('uaOutput(Testing).csv', 'w'))

    headers = next(reader)
    headers.append("Browser")
    headers.append("OperatingSystem")
    writer.writerow(headers)
    for row in reader:
        temp = parse(row[0])
        row.append(str(temp.browser))
        row.append(str(temp.os))
        writer.writerow(row)
    
# %%
