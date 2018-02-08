import sys, random, json

if __name__ == '__main__':
    randnum = random.randint(0,99);
    response = json.load(sys.stdin)["data"]["children"][randnum]["data"]
    print ("\n\"" + response["title"] + "\"")
    print ("      -" + response["author"] + "\n")
