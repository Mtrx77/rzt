# Writing to a file in Python
# This was tested on Python 2.7.

# path - is a string to desired path location. The file does
#         not have to exist.
# content - is a string with the file content.
def writeToFile(path, content):
  file = open(path, "w")
  file.write(content)
  file.close()
  
  
PATH_TO_MY_FILE = './example.txt'
CONTENT_FOR_MY_FILE = 'Example\nThis is on line 2 of a text file.\n\nThe end.'

writeToFile(PATH_TO_MY_FILE, CONTENT_FOR_MY_FILE)

# Run in terminal using:
# python write-to-file.py
#
# It will create a file called `example.txt` and the contents will look like (minus the number signs):
# Example
# This is on line 2 of a text file.
# 
# The end.
