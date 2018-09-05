# openssl-brute-force

Open ssl brute force bash script for password encoded message 

Usage

git clone https://github.com/cymtrick/openssl-brute-force.git

cd openssl-brute-force

### With base 64

./brute-openssl.sh /your/password/file/location encryped.key

### Without base 64

go to the line where openssl command is there and remove -a option
