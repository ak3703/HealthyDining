import json
import re

def main():
	BusinessFile = open('business_id.txt', 'r')
	reviews = open('review_YelpDataset.json', 'r')

	for b_id in BusinessFile:
		b_id = b_id.rstrip('\n')
		print(b_id)
		'''m = re.match('^(' + b_id + ')$', line, flags=0)'''




main()