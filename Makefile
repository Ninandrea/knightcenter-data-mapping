greeting:
	echo "hello world"
math:
	expr 2 + 2
all: directories downloads freshdata

directories:
	-mkdir tpm
	-mkdir data
downloads:
	curl "https://www.imf.org/external/datamapper/api/v1/PCPIPCH?periods=2023" -o tmp/inflation.json
	curl "https://www.imf.org/external/datamapper/api/v1/countries" -o tmp/countries.json

freshdata:
	nude imf_to_csv.js


