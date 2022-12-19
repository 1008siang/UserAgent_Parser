library(reticulate)
library("uaparserjs")
uaFile = read.csv("uaList.csv")
import_from_path("httpagentparser","C:/Users/user-pc/Razer/python-user-agents-master/")

py_run_file("detect.py")
py$detect(temp)
temp = "Mozilla/5.0 (iPad; CPU OS 10_3_3 like Mac OS X) AppleWebKit/603.3.8 (KHTML, like Gecko) Version/10.0 Mobile/14G60 Safari/602.1
"
httpagentparser.simpledetect(temp)
ua_parse(temp)

for (row in uaFile) {
  outputs = ua_parse(row)
}

write.csv(outputs,"output.csv")
